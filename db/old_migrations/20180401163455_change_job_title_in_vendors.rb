class ChangeJobTitleInVendors < ActiveRecord::Migration[5.1]
  def change
    change_column :vendors, :job_title, :string, :limit => 50
  end
end
