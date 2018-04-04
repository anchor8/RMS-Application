class Customer < ApplicationRecord
  # Relationships
  belongs_to :state
  belongs_to :customer_status
  has_many :orders

  # Validations
  validates :state_id, allow_blank: false, presence: true
  validates :customer_first_name, allow_blank: false, presence: true, format: { with: /\A^\s*[a-zA-Z,\s]+\s*$\z/, message: "Only letters, commas, or spaces for first name allowed"}
  validates :customer_last_name, allow_blank: false,presence: true, format: { with: /\A^\s*[a-zA-Z,\s]+\s*$\z/, message: "Only letters, commas, or spaces for last name allowed"}
  validates :company_name, allow_blank: false, presence: true, format: { with: /\A^\s*[a-zA-Z',\s]+\s*$\z/, message: "Only letters, commas, apostrophes, or spaces for company name allowed"}
  validates :job_title, allow_blank: false, presence: true, format: { with: /\A^\s*[a-zA-Z',\s]+\s*$\z/, message: "Only letters, commas, apostrophes, or spaces for job name allowed"}
  validates :work_phone, allow_blank: false, presence: true, format: { with: /\A^(?:\+?\d{1,3}\s*-?)?\(?(?:\d{3})?\)?[-]?\d{3}[-]?\d{4}$\z/, message: "Format ( +1-123-123-1234 )"}
  validates :mobile, allow_blank: true, presence: false, format: { with: /\A^(?:\+?\d{1,3}\s*-?)?\(?(?:\d{3})?\)?[-]?\d{3}[-]?\d{4}$\z/, message: "Format ( +1-123-123-1234 )" }
  validates :fax, allow_blank: true, presence: false, format: { with: /\A^(?:\+?\d{1,3}\s*-?)?\(?(?:\d{3})?\)?[-]?\d{3}[-]?\d{4}$\z/, message: "Format ( +1-123-123-1234 )" }
  validates :customer_email, allow_blank: false, presence: true, format: Devise.email_regexp
  validates :customer_cc_email, allow_blank: true, presence: false, format: Devise.email_regexp
  validates :website, allow_blank: true, presence: false, format: { with: /\A([\da-z\.-]+)\.([a-z\.]{2,6})([\/\w\.-]*)*\/?\Z/i, message: "Format ( www.website.com ) or ( website.com )" }
  validates :social_media_address, allow_blank: true, presence: false, format: { with: /\A(https?:\/\/)?([\da-z\.-]+)\.([a-z\.]{2,6})([\/\w\.-]*)*\/?\Z/i, message: "Invalid URL" }
  validates :street_address_1, allow_blank: false, presence: true
  validates :street_address_2, allow_blank: true, presence: false
  validates :city, allow_blank: false, presence: true, format: { with: /\A^\s*[a-zA-Z,\s]+\s*$\z/, message: "Only letters, commas, or spaces for city name allowed"}
  validates :zip_code, allow_blank: false, presence: true, format: { with: /\A^\d{5}(?:[-\s]\d{4})?$\z/, message: "Format ( 12345 ) or ( 12345-4321 )"}
  validates :deleted_at, allow_blank: true, presence: false

  # Toggle customer
  def toggle_customer
    if !deleted_at
      # Deleted at doesn't exist
      update_attribute(:deleted_at, Time.current)
      update_attribute(:customer_status_id, 1)
    else
      # Deleted at exists
      update_attribute(:deleted_at, nil)
      update_attribute(:customer_status_id, 2)
    end
  end

  # Import customers
  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|
      Customer.create! row.to_hash
    end
  end

  # Format customer first and last name
  def formatted_name
    "#{customer_first_name} #{customer_last_name}"
  end
end
