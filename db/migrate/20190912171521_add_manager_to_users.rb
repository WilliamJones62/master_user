class AddManagerToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :manager, :string
  end
end
