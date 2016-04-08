require 'rails_helper'

RSpec.describe "stock_types/index", type: :view do
  before(:each) do
    assign(:stock_types, [
      StockType.create!(
        :name => "Name"
      ),
      StockType.create!(
        :name => "Name"
      )
    ])
  end

  it "renders a list of stock_types" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
