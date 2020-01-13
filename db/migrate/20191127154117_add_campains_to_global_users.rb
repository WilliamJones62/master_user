class AddCampainsToGlobalUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :global_users, :campaigns, :boolean
  end
end
