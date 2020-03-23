class AddFocusItemsManagerToGlobalUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :global_users, :focus_items_manager, :string
  end
end
