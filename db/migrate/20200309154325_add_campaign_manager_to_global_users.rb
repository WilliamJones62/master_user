class AddCampaignManagerToGlobalUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :global_users, :campaign_manager, :string
  end
end
