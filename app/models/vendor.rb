class Vendor < ApplicationRecord
  belongs_to :state
  belongs_to :vendor_status
  has_many :orders
  
  validates :contact_name, allow_null: false, presence: true
  validates :job_title, allow_null: false, presence: true
  validates :work_phone, allow_null: false, presence: true
  validates :mobile, allow_null: false, presence: true
  validates :fax, allow_null: true, presence: false
  validates :vendor_email, allow_null: true, presence: false
  validates :vendor_cc_email, allow_null: true, presence: false
  validates :website, allow_null: true, presence: false
  validates :street_address_1, allow_null: false, presence: true
  validates :street_address_2, allow_null: true, presence: false
  validates :city, allow_null: false, presence: true
  validates :zip_code, allow_null: false, presence: true
  validates :deleted_at, allow_null: true, presence: false

  def toggle_vendor
    if !deleted_at
      update_attribute(:deleted_at, Time.current)
      update_attribute(:vendor_status_id, 1)
    else
      update_attribute(:deleted_at, nil)
      update_attribute(:vendor_status_id, 2)
    end
  end

  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|
      Vendor.create! row.to_hash
    end
  end

end
