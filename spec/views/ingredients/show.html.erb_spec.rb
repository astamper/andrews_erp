require 'rails_helper'

RSpec.describe "ingredients/show", type: :view do
  before(:each) do
    @ingredient = assign(:ingredient, Ingredient.create!(
      :quantity => "9.99",
      :unit => "Unit",
      :stock_type => nil,
      :stock_type => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/Unit/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
