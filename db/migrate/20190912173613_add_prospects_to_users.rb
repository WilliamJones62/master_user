class AddProspectsToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :prospects, :boolean
  end
end
