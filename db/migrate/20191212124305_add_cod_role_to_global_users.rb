class AddCodRoleToGlobalUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :global_users, :cod_role, :string
  end
end
