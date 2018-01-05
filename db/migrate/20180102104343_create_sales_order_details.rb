class CreateSalesOrderDetails < ActiveRecord::Migration[5.1]
  def change
    create_table :sales_order_details do |t|
      t.integer :item_id
      t.integer :sales_order_id
      t.integer :quantity
      t.decimal :unit_price
      t.date :despatch_date
    end
  end
end
