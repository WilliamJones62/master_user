class AddBadgeNumbToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :badge_numb, :string
  end
end
