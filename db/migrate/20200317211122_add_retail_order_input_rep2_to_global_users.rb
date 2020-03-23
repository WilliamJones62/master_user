class AddRetailOrderInputRep2ToGlobalUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :global_users, :retail_order_input_rep2, :string
  end
end
