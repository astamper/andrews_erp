require 'rails_helper'

RSpec.describe "stocks/new", type: :view do
  before(:each) do
    assign(:stock, Stock.new(
      :initial_quantity => 1.5,
      :purchase_price => 1.5,
      :batch_number => "MyString",
      :supplier => nil,
      :stock_type => nil,
      :unit => "MyString"
    ))
  end

  it "renders new stock form" do
    render

    assert_select "form[action=?][method=?]", stocks_path, "post" do

      assert_select "input#stock_initial_quantity[name=?]", "stock[initial_quantity]"

      assert_select "input#stock_purchase_price[name=?]", "stock[purchase_price]"

      assert_select "input#stock_batch_number[name=?]", "stock[batch_number]"

      assert_select "input#stock_supplier_id[name=?]", "stock[supplier_id]"

      assert_select "input#stock_stock_type_id[name=?]", "stock[stock_type_id]"

      assert_select "input#stock_unit[name=?]", "stock[unit]"
    end
  end
end
