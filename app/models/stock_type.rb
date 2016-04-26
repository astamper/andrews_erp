class StockType < ActiveRecord::Base
  has_many :order_items
  has_many :stocks
  has_many :ingredients
  has_many :stock_type_components, :through => :ingredients
  has_many :base_stock_type
  belongs_to :base_stock_type, class_name: "StockType", :foreign_key => "base_stock_type_id"

  accepts_nested_attributes_for :ingredients, reject_if: :all_blank, allow_destroy: true



  def identification
    if base_stock_type == nil
      return "#{name}"
    else
      return "#{base_stock_type.name}"
    end
  end

  def label
    return "#{identification} #{unit} #{packaging}"
  end

  def packaging
    var = ""
    ingredients.each do |ingredient|
      if ingredient.stock_type_component != nil
        if ingredient.stock_type_component.category == "Packaging"
          var=ingredient.stock_type_component.identification
        end
      end
    end
    return var
  end

  def ingredient_breakdown
    passed = []
    multiple = 0
    ing = []
    ingredients.each do |ingredient|
      ing.push({"multiple" => 1, "instance" => ingredient})
    end
    while ing.count > 0
      failed = []
      ing.each do |ingredient|
        if ingredient["instance"].stock_type_component.ingredients[0] == nil
          amount = ingredient["instance"].quantity*ingredient["multiple"]
          hash = {"amount" => amount, "stockname" =>  ingredient["instance"].stock_type_component.identification}
          passed.push(hash)
        else
          ingredient["instance"].stock_type_component.ingredients.each do |ingredient|
            hash = {"multiple" => ingredient.quantity, "instance" => ingredient}
            failed.push(hash)
          end
        end
      end
      ing = failed
    end


    return passed
  end
end

