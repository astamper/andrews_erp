require 'rails_helper'

RSpec.describe "ingredient_instances/show", type: :view do
  before(:each) do
    @ingredient_instance = assign(:ingredient_instance, IngredientInstance.create!(
      :quantity => "9.99",
      :unit => "Unit",
      :stock => nil,
      :stock => nil
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
