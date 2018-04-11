# Order Model
class Order < ApplicationRecord
  # Relationships
  belongs_to :vendor
  belongs_to :order_status
  belongs_to :customer
  belongs_to :country
  belongs_to :employee
  belongs_to :payment_type
  belongs_to :shipper
  belongs_to :state
  has_many :order_lines, dependent: :destroy
  accepts_nested_attributes_for :order_lines, allow_destroy: true, reject_if: :all_blank

  # Validations
  validates :order_date, allow_blank: false, presence: true, :timeliness => {:type => :date}
  validates :ship_date, allow_blank: true, presence: false, :timeliness => {:type => :date}
  validates :purchase_order_number, uniqueness: true
  validates :shipping_number, presence: true, unless: ->(order){order.order_status_id == 1}, format: { with: /\A^\d{1,15}\z/, message: 'Shipping number is between 1 - 15 digits'}
  validates :ship_date, presence: true, unless: ->(order){order.order_status_id == 1}
  validates :deleted_at, allow_blank: true, presence: false

  # After save
  after_save :set_state_save
  after_save :set_street_address_1_save
  after_save :set_street_address_2_save
  after_save :set_city_save
  after_save :set_zip_code_save

  # After update
  after_update :set_state_update
  after_update :set_street_address_1_update
  after_update :set_street_address_2_update
  after_update :set_city_update
  after_update :set_zip_code_update

  # Toggle order
  def toggle_order
    if !deleted_at
      # Deleted at doesn't exist
      update_attribute(:deleted_at, Time.current)
      update_attribute(:order_status_id, '3')
    else
      # Deleted at exists
      update_attribute(:deleted_at, nil)
      update_attribute(:order_status_id, '1')
    end
  end

  # Toggle order status
  def toggle_order_status
    if order_status_id == 1
      # Order status is not shipped
      update_attribute(:order_status_id, '2')
      update_attribute(:ship_date, Time.current)
    else
      # Order status is shipped
      update_attribute(:order_status_id, '1')
      update_attribute(:ship_date, nil)
    end
  end

  # Import orders
  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|
      Order.create! row.to_hash
    end
  end

  private

  # Set state from customer after saving order
  def set_state_save
    @customer = Customer.find(customer_id)

    Order.find(id).update_column(:state_id, @customer.state_id)
  end

  # Set street_address_1 from customer after saving order
  def set_street_address_1_save
    @customer = Customer.find(customer_id)

    Order.find(id).update_column(:street_address_1, @customer.street_address_1)
  end

  # Set street_address_2 from customer after saving order
  def set_street_address_2_save
    @customer = Customer.find(customer_id)

    Order.find(id).update_column(:street_address_2, @customer.street_address_2)
  end

  # Set city from customer after saving order
  def set_city_save
    @customer = Customer.find(customer_id)

    Order.find(id).update_column(:city, @customer.city)
  end

  # Set zip_code from customer after saving order
  def set_zip_code_save
    @customer = Customer.find(customer_id)

    Order.find(id).update_column(:zip_code, @customer.zip_code)
  end

  # Set state from customer after updating order
  def set_state_update
    @customer = Customer.find(customer_id)

    Order.find(id).update_column(:state_id, @customer.state_id)
  end

  # Set street_address_1 from customer after updating order
  def set_street_address_1_update
    @customer = Customer.find(customer_id)

    Order.find(id).update_column(:street_address_1, @customer.street_address_1)
  end

  # Set street_address_2 from customer after updating order
  def set_street_address_2_update
    @customer = Customer.find(customer_id)

    Order.find(id).update_column(:street_address_2, @customer.street_address_2)
  end

  # Set city from customer after updating order
  def set_city_update
    @customer = Customer.find(customer_id)

    Order.find(id).update_column(:city, @customer.city)
  end

  # Set zip_code from customer after updating order
  def set_zip_code_update
    @customer = Customer.find(customer_id)

    Order.find(id).update_column(:zip_code, @customer.zip_code)
  end
end
