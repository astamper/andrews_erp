require 'rails_helper'

RSpec.describe "ingredients/index", type: :view do
  before(:each) do
    assign(:ingredients, [
      Ingredient.create!(
        :quantity => "9.99",
        :unit => "Unit",
        :stock_type => nil,
        :stock_type => nil
      ),
      Ingredient.create!(
        :quantity => "9.99",
        :unit => "Unit",
        :stock_type => nil,
        :stock_type => nil
      )
    ])
  end

  it "renders a list of ingredients" do
    render
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "Unit".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
