require 'rails_helper'

RSpec.describe "ingredients/new", type: :view do
  before(:each) do
    assign(:ingredient, Ingredient.new(
      :quantity => "9.99",
      :unit => "MyString",
      :stock_type => nil,
      :stock_type => nil
    ))
  end

  it "renders new ingredient form" do
    render

    assert_select "form[action=?][method=?]", ingredients_path, "post" do

      assert_select "input#ingredient_quantity[name=?]", "ingredient[quantity]"

      assert_select "input#ingredient_unit[name=?]", "ingredient[unit]"

      assert_select "input#ingredient_stock_type_id[name=?]", "ingredient[stock_type_id]"

      assert_select "input#ingredient_stock_type_id[name=?]", "ingredient[stock_type_id]"
    end
  end
end
