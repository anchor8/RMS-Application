class Vendor < ApplicationRecord
  belongs_to :state
  belongs_to :vendor_status
  has_many :orders

  def toggle_vendor
    if !deleted_at
      update_attribute(:deleted_at, Time.current)
    else
      update_attribute(:deleted_at, nil)
    end
  end

  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|
      Vendor.create! row.to_hash
    end
  end

end
