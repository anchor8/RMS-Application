class Product < ApplicationRecord
  has_many :order_lines

  # Toggle order
  def toggle_product_status
    if !deleted_at
      # Deleted at doesn't exist
      update_attribute(:deleted_at, Time.current)
    else
      # Deleted at exists
      update_attribute(:deleted_at, nil)
    end
  end
end
