# == Schema Information
#
# Table name: items
#
#  id          :integer          not null, primary key
#  part_number :text
#  image       :text
#  list_price  :decimal(, )
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Item < ApplicationRecord
  has_many :sales_order_details
end
