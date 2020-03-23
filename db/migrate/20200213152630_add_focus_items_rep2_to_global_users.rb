class AddFocusItemsRep2ToGlobalUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :global_users, :focus_items_rep2, :string
  end
end
