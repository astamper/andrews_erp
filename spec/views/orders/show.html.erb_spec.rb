require 'rails_helper'

RSpec.describe "orders/show", type: :view do
  before(:each) do
    @order = assign(:order, Order.create!(
      :first_name => "First Name",
      :last_name => "Last Name",
      :fob_time => "Fob Time",
      :paid => false,
      :shipping_type => "Shipping Type",
      :customer => nil,
      :shipping_address => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/First Name/)
    expect(rendered).to match(/Last Name/)
    expect(rendered).to match(/Fob Time/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/Shipping Type/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
