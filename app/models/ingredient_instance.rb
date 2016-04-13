class IngredientInstance < ActiveRecord::Base
  belongs_to :stock
  belongs_to :stock_component, class_name: "Stock", :foreign_key => "stock_component_id"
end
