class AddRefusalsToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :refusals, :boolean
  end
end
