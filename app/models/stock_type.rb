class StockType < ActiveRecord::Base
  has_many :order_items
  has_many :stocks
  has_many :ingredients
  has_many :stock_type_components, :through => :ingredients
  has_many :base_stock_type
  belongs_to :base_stock_type, class_name: "StockType", :foreign_key => "base_stock_type_id"

  accepts_nested_attributes_for :ingredients, reject_if: :all_blank, allow_destroy: true

  def name_create
    return "#{base_stock_type.name} #{packaging} #{unit}"
  end
end



