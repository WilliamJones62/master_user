class AddShortTermTrucksToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :short_term_trucks, :boolean
  end
end
