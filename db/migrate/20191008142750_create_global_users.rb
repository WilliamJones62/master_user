class CreateGlobalUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :global_users do |t|
      t.string :manager
      t.string :manager_id
      t.string :user_dept
      t.boolean :dept_manager
      t.boolean :dispatch
      t.boolean :holiday_bird_caps
      t.boolean :master_user
      t.boolean :order_input
      t.boolean :pricing
      t.boolean :prospects
      t.boolean :rapid_order
      t.boolean :refusals
      t.boolean :short_term_trucks
      t.boolean :take_in
      t.boolean :temp_hire
      t.boolean :truck_monitoring

      t.timestamps
    end
  end
end
