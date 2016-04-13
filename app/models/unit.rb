class Unit < ActiveRecord::Base
  belongs_to :base_unit, class_name: "Unit", :foreign_key => "base_unit_id"
end
