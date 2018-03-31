class ChangeCustomerJobTitle < ActiveRecord::Migration[5.1]
  def change
    change_column :customers, :job_title, :string, limit: 50, null: false
  end
end
