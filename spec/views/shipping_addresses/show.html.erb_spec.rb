require 'rails_helper'

RSpec.describe "shipping_addresses/show", type: :view do
  before(:each) do
    @shipping_address = assign(:shipping_address, ShippingAddress.create!(
      :first_name => "First Name",
      :last_name => "Last Name",
      :address_1 => "Address 1",
      :address_2 => "Address 2",
      :city => "City",
      :state => "State",
      :country => "Country",
      :zip => "Zip",
      :email => "Email",
      :phone => "Phone",
      :customer => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/First Name/)
    expect(rendered).to match(/Last Name/)
    expect(rendered).to match(/Address 1/)
    expect(rendered).to match(/Address 2/)
    expect(rendered).to match(/City/)
    expect(rendered).to match(/State/)
    expect(rendered).to match(/Country/)
    expect(rendered).to match(/Zip/)
    expect(rendered).to match(/Email/)
    expect(rendered).to match(/Phone/)
    expect(rendered).to match(//)
  end
end
