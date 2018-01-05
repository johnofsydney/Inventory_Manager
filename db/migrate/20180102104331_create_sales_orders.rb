class CreateSalesOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :sales_orders do |t|
      t.date :quote_date
      t.date :sale_date
      t.text :customer_PO_number
      t.timestamps
    end
  end
end
