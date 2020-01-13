class CreateEmployees < ActiveRecord::Migration[5.1]
  def change
    create_table :employees do |t|
      t.string :Employee_Status
      t.string :Badge_
      t.string :ssn4

      t.timestamps
    end
  end
end
