class Stock < ActiveRecord::Base
  belongs_to :supplier
  belongs_to :stock_type
end
