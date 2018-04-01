class ChangeStateName < ActiveRecord::Migration[5.1]
  def change
    change_column :states, :state_name, :string, :limit => 35
  end
end
