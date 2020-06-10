class AddComplaintsToGlobalUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :global_users, :complaints, :boolean
  end
end
