class Stock < ActiveRecord::Base
  belongs_to :supplier
  belongs_to :stock_type
  has_many :order_items
  has_many :ingredient_instances
  has_many :stock_components, :through => :ingredients_instances
end
