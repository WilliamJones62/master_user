class AddComplaintsDcToGlobalUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :global_users, :complaints_dc, :string
  end
end
