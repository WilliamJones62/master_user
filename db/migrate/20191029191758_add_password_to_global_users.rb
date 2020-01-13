class AddPasswordToGlobalUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :global_users, :password, :string
  end
end
