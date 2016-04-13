class OrderItem < ActiveRecord::Base
  belongs_to :order
  belongs_to :stock_type
  belongs_to :stock



end
