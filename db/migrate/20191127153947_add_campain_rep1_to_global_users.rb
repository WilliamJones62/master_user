class AddCampainRep1ToGlobalUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :global_users, :campaign_rep1, :string
  end
end
