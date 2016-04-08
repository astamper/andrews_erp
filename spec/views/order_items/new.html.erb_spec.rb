require 'rails_helper'

RSpec.describe "order_items/new", type: :view do
  before(:each) do
    assign(:order_item, OrderItem.new(
      :quantity => 1,
      :packaging => "MyString",
      :order => nil,
      :stock_type => nil,
      :unit => "MyString",
      :stock => nil
    ))
  end

  it "renders new order_item form" do
    render

    assert_select "form[action=?][method=?]", order_items_path, "post" do

      assert_select "input#order_item_quantity[name=?]", "order_item[quantity]"

      assert_select "input#order_item_packaging[name=?]", "order_item[packaging]"

      assert_select "input#order_item_order_id[name=?]", "order_item[order_id]"

      assert_select "input#order_item_stock_type_id[name=?]", "order_item[stock_type_id]"

      assert_select "input#order_item_unit[name=?]", "order_item[unit]"

      assert_select "input#order_item_stock_id[name=?]", "order_item[stock_id]"
    end
  end
end
