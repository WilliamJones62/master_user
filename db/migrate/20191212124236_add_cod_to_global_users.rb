class AddCodToGlobalUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :global_users, :cod, :boolean
  end
end
