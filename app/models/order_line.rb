class OrderLine < ApplicationRecord
  belongs_to :product
  belongs_to :order

  after_save :set_price_save
  after_save :calculate_order_total_save

  after_update :set_price_update
  after_update :calculate_order_total_update

  private

  def calculate_order_total_save
    @order_line = OrderLine.find(id)
    @order_sub_total = OrderLine.where('order_id = ?', order.id).sum(:price)
    @order_total = @order_sub_total.to_f * @order_line.number_of_items.to_f
    Order.find(order.id).update_column(:order_total, @order_total)
  end

  def calculate_order_total_update
    @order_line = OrderLine.find(id)
    @order_sub_total = OrderLine.where('order_id = ?', order.id).sum(:price)
    @order_total = @order_sub_total.to_f * @order_line.number_of_items.to_f
    Order.find(order.id).update_column(:order_total, @order_total)
  end

  def set_price_save
    @product = Product.find(product_id)
    OrderLine.find(id).update_column(:price, @product.price)
  end

  def set_price_update
    @product = Product.find(product_id)
    OrderLine.find(id).update_column(:price, @product.price)
  end
end
