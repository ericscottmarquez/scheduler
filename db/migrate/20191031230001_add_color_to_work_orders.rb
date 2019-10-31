class AddColorToWorkOrders < ActiveRecord::Migration[5.2]
  def change
    add_column :work_orders, :color, :string
  end
end
