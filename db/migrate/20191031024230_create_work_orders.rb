class CreateWorkOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :work_orders do |t|
      t.integer :technician_id
      t.integer :location_id
      t.datetime :start_time
      t.datetime :end_time
      t.integer :duration
      t.integer :price

      t.timestamps
    end
  end
end
