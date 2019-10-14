class AddOrderInputToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :order_input, :boolean
  end
end
