require 'rails_helper'

RSpec.describe "orders/edit", type: :view do
  before(:each) do
    @order = assign(:order, Order.create!(
      :first_name => "MyString",
      :last_name => "MyString",
      :fob_time => "MyString",
      :paid => false,
      :shipping_type => "MyString",
      :customer => nil,
      :shipping_address => nil
    ))
  end

  it "renders the edit order form" do
    render

    assert_select "form[action=?][method=?]", order_path(@order), "post" do

      assert_select "input#order_first_name[name=?]", "order[first_name]"

      assert_select "input#order_last_name[name=?]", "order[last_name]"

      assert_select "input#order_fob_time[name=?]", "order[fob_time]"

      assert_select "input#order_paid[name=?]", "order[paid]"

      assert_select "input#order_shipping_type[name=?]", "order[shipping_type]"

      assert_select "input#order_customer_id[name=?]", "order[customer_id]"

      assert_select "input#order_shipping_address_id[name=?]", "order[shipping_address_id]"
    end
  end
end
