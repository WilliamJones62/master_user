class AddRetailRapidOrderToGlobalUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :global_users, :retail_rapid_order, :boolean
  end
end
