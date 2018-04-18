# Product Model
class Product < ApplicationRecord
  # Relationships
  has_many :order_lines

  # Validations
  validates :product_name, allow_blank: false, presence: true
  validates :price, allow_blank: false, presence: true, :numericality => true, :format => { :with => /\A^\d{1,10}(\.\d{0,2})?$\z/, :message => "Only numbers greater than zero in the format of ( 11.99 ) for price allowed" }


  # Toggle product status
  def toggle_product_status
    if !deleted_at
      # Deleted at doesn't exist
      update_attribute(:deleted_at, Time.current)
    else
      # Deleted at exists
      update_attribute(:deleted_at, nil)
    end
  end

  # Import vendors
  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|
      Product.create! row.to_hash
    end
  end
end
