require 'rails_helper'

RSpec.describe "units/index", type: :view do
  before(:each) do
    assign(:units, [
      Unit.create!(
        :name => "Name"
      ),
      Unit.create!(
        :name => "Name"
      )
    ])
  end

  it "renders a list of units" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
