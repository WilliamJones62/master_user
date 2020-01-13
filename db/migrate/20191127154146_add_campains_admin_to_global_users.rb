class AddCampainsAdminToGlobalUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :global_users, :campaigns_admin, :boolean
  end
end
