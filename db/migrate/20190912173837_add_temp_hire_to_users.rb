class AddTempHireToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :temp_hire, :boolean
  end
end
