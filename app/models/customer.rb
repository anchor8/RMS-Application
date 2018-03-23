class Customer < ApplicationRecord
  belongs_to :state
  has_many :orders

  def toggle_customer
    if !deleted_at
      update_attribute(:deleted_at, Time.current)
    else
      update_attribute(:deleted_at, nil)
    end
  end

  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|
      Customer.create! row.to_hash
    end
  end

end
