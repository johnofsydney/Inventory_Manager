# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Item.destroy_all
i1 = Item.create :part_number => 'AM285', :list_price => 10.25
i2 = Item.create :part_number => 'SBS40', :list_price => 20.99
i3 = Item.create :part_number => 'PS1270', :list_price => 7.55

SalesOrder.destroy_all
so1 = SalesOrder.create :customer_PO_number => 'ABC123'
so2 = SalesOrder.create :customer_PO_number => '456XYZ'
so3 = SalesOrder.create :customer_PO_number => 'PO-101'


SalesOrderDetail.destroy_all
sod1 = SalesOrderDetail.create :quantity => 4
sod2 = SalesOrderDetail.create :quantity => 5
sod3 = SalesOrderDetail.create :quantity => 6

i1.sales_order_details << sod1
i2.sales_order_details << sod1
i3.sales_order_details << sod3

so1.sales_order_details << sod1
so2.sales_order_details << sod2
so3.sales_order_details << sod3
