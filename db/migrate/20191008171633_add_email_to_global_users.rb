class AddEmailToGlobalUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :global_users, :email, :string
  end
end
