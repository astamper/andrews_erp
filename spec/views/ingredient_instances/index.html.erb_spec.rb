require 'rails_helper'

RSpec.describe "ingredient_instances/index", type: :view do
  before(:each) do
    assign(:ingredient_instances, [
      IngredientInstance.create!(
        :quantity => "9.99",
        :unit => "Unit",
        :stock => nil,
        :stock => nil
      ),
      IngredientInstance.create!(
        :quantity => "9.99",
        :unit => "Unit",
        :stock => nil,
        :stock => nil
      )
    ])
  end

  it "renders a list of ingredient_instances" do
    render
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "Unit".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
