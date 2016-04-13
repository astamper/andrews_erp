class Ingredient < ActiveRecord::Base
  belongs_to :stock_type
  belongs_to :stock_type_component, class_name: "StockType", :foreign_key => "stock_type_component_id"
end


# # the stock_type table
# create_table :stock_type do |t|
#   t.column :name, :string
# end

# # the ingredients association table
# create_table :ingredients do |t|
#   t.column :person_id, :integer
#   t.column :stock_type_component_id, :integer
# end

# class Ingredient < ActiveRecord::Base
#   # don't have to give class_name or foreign_key b/c ActiveRecord reflection works here
#   belongs_to :stock_type

#   # make sure to give class_name and foreign_key b/c ActiveRecord doesn't know what stock_type_component is
#   belongs_to :stock_type_component, :class_name => "StockType", :foreign_key => "stock_type_component_id"
# end

# class Person < ActiveRecord::Base
#   # tell ActiveRecord that a stock_type has_many ingredients or :through won't work
#   has_many :ingredients

#   # create the has_many :through relationship
#   has_many :stock_type_components, :through => :ingredients

# end
