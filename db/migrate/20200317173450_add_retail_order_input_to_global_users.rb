class AddRetailOrderInputToGlobalUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :global_users, :retail_order_input, :boolean
  end
end
