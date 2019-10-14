class AddTruckMonitoringToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :truck_monitoring, :boolean
  end
end
