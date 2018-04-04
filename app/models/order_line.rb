class OrderLine < ApplicationRecord
  belongs_to :product
  belongs_to :order, optional: true

  after_save :calculate_order_total
  after_update :calculate_order_total

  private

  def calculate_order_total
    order_total = OrderLine.where('order_id = ?', order.id).sum(:price)
    Order.find(order.id).update_column(:order_total, order_total)
  end
end
