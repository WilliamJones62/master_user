class AddRetailOrderInputRep1ToGlobalUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :global_users, :retail_order_input_rep1, :string
  end
end
