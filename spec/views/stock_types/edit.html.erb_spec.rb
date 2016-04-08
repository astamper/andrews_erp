require 'rails_helper'

RSpec.describe "stock_types/edit", type: :view do
  before(:each) do
    @stock_type = assign(:stock_type, StockType.create!(
      :name => "MyString"
    ))
  end

  it "renders the edit stock_type form" do
    render

    assert_select "form[action=?][method=?]", stock_type_path(@stock_type), "post" do

      assert_select "input#stock_type_name[name=?]", "stock_type[name]"
    end
  end
end
