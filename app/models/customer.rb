class Customer < ActiveRecord::Base
  has_many :orders
  has_many :shipping_addresses
end
