class AddTakeInToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :take_in, :boolean
  end
end
