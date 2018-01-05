# == Schema Information
#
# Table name: sales_order_details
#
#  id             :integer          not null, primary key
#  item_id        :integer
#  sales_order_id :integer
#  quantity       :integer
#  unit_price     :decimal(, )
#  despatch_date  :date
#

class SalesOrderDetail < ApplicationRecord
  belongs_to :item
  belongs_to :sales_order
end
