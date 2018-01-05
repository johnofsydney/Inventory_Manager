# == Schema Information
#
# Table name: sales_orders
#
#  id                 :integer          not null, primary key
#  quote_date         :date
#  sale_date          :date
#  customer_PO_number :text
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#

class SalesOrder < ApplicationRecord
  has_many :sales_order_details
end
