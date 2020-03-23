class AddFocusItemsToGlobalUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :global_users, :focus_items, :boolean
  end
end
