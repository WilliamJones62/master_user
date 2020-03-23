class AddFocusItemsRep1ToGlobalUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :global_users, :focus_items_rep1, :string
  end
end
