class Vendor < ApplicationRecord
  # Relationships
  belongs_to :state
  belongs_to :vendor_status
  has_many :orders

  # Validations
  validates :contact_name, allow_nil: false, presence: true, format: { with: /\A^\s*[a-zA-Z,\s]+\s*$\z/, message: "Only letters, commas, or spaces for contact name allowed"}
  validates :job_title, allow_nil: false, presence: true, format: { with: /\A^\s*[a-zA-Z,\s]+\s*$\z/, message: "Only letters, commas, or spaces for job title allowed"}
  validates :work_phone, allow_nil: false, presence: true, format: { with: /\A^(?:\+?\d{1,3}\s*-?)?\(?(?:\d{3})?\)?[-]?\d{3}[-]?\d{4}$\z/, message: "Format ( +1-123-123-1234 )"}
  validates :mobile, allow_nil: false, presence: true, format: { with: /\A^(?:\+?\d{1,3}\s*-?)?\(?(?:\d{3})?\)?[-]?\d{3}[-]?\d{4}$\z/, message: "Format ( +1-123-123-1234 )"}
  validates :fax, allow_nil: true, presence: false, format: { with: /\A^(?:\+?\d{1,3}\s*-?)?\(?(?:\d{3})?\)?[-]?\d{3}[-]?\d{4}$\z/, message: "Format ( +1-123-123-1234 )"}
  validates :vendor_email, allow_nil: true, presence: false, format: Devise.email_regexp
  validates :vendor_cc_email, allow_nil: true, presence: false, format: Devise.email_regexp
  validates :website, allow_nil: true, presence: false, format: { with: /\A([\da-z\.-]+)\.([a-z\.]{2,6})([\/\w\.-]*)*\/?\Z/i, message: "Format ( www.website.com ) or ( website.com )" }
  validates :street_address_1, allow_nil: false, presence: true
  validates :street_address_2, allow_nil: true, presence: false
  validates :city, allow_nil: false, presence: true, format: { with: /\A^\s*[a-zA-Z,\s]+\s*$\z/, message: "Only letters, commas, or spaces for city allowed"}
  validates :zip_code, allow_nil: false, presence: true, format: { with: /\A^\d{5}(?:[-\s]\d{4})?$\z/, message: "Format ( 12345 ) or ( 12345-4321 )"}
  validates :deleted_at, allow_nil: true, presence: false

  # Toggle vendor
  def toggle_vendor
    if !deleted_at
      # Deleted at doesn't exist
      update_attribute(:deleted_at, Time.current)
      update_attribute(:vendor_status_id, 1)
    else
      # Deleted at exists
      update_attribute(:deleted_at, nil)
      update_attribute(:vendor_status_id, 2)
    end
  end

  # Import vendors
  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|
      Vendor.create! row.to_hash
    end
  end

end
