require 'rails_helper'

RSpec.describe "ingredient_instances/edit", type: :view do
  before(:each) do
    @ingredient_instance = assign(:ingredient_instance, IngredientInstance.create!(
      :quantity => "9.99",
      :unit => "MyString",
      :stock => nil,
      :stock => nil
    ))
  end

  it "renders the edit ingredient_instance form" do
    render

    assert_select "form[action=?][method=?]", ingredient_instance_path(@ingredient_instance), "post" do

      assert_select "input#ingredient_instance_quantity[name=?]", "ingredient_instance[quantity]"

      assert_select "input#ingredient_instance_unit[name=?]", "ingredient_instance[unit]"

      assert_select "input#ingredient_instance_stock_id[name=?]", "ingredient_instance[stock_id]"

      assert_select "input#ingredient_instance_stock_id[name=?]", "ingredient_instance[stock_id]"
    end
  end
end
