# Order Line Model
class OrderLine < ApplicationRecord
  # Relationships
  belongs_to :product
  belongs_to :order

  # Validations
  validates :number_of_items, format: { with: /\A^\d{1,8}\z/, message: 'Number of items must be between 1 - 8 digits'}

  # After save
  after_save :set_price_save
  after_save :calculate_order_total_save

  # After update
  after_update :set_price_update
  after_update :calculate_order_total_update

  # Import vendors
  def self.import(file)
    CSV.foreach(file.path, headers: true, header_converters: [:downcase, :symbol]) do |row|
      if [:order_id].all? { |header| row.headers.include? header }
        OrderLine.create! row.to_hash
      else
        raise "Wrong file."
      end
    end
  end

  private

  # Calculate and set order_total in order after saving order line
  def calculate_order_total_save
    @order_line = OrderLine.find(id)
    @order_sub_total = OrderLine.where('order_id = ?', order.id).sum(:price)
    @order_total = @order_sub_total.to_f * @order_line.number_of_items.to_f

    Order.find(order.id).update_column(:order_total, @order_total)
  end

  # Calculate and set order_total in order after updating order line
  def calculate_order_total_update
    @order_line = OrderLine.find(id)
    @order_sub_total = OrderLine.where('order_id = ?', order.id).sum(:price)
    @order_total = @order_sub_total.to_f * @order_line.number_of_items.to_f

    Order.find(order.id).update_column(:order_total, @order_total)
  end

  # Set product price in order line after saving order line
  def set_price_save
    @product = Product.find(product_id)

    OrderLine.find(id).update_column(:price, @product.price)
  end

  # Set product price in order line after updating order line
  def set_price_update
    @product = Product.find(product_id)

    OrderLine.find(id).update_column(:price, @product.price)
  end
end
