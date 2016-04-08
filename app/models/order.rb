class Order < ActiveRecord::Base
  belongs_to :customer
  belongs_to :shipping_address
  has_many :order_items
end
