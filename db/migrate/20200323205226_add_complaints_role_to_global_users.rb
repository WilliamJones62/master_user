class AddComplaintsRoleToGlobalUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :global_users, :complaints_role, :string
  end
end
