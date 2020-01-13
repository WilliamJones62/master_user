class AddHardwareToGlobalUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :global_users, :hardware, :boolean
  end
end
