require 'rails_helper'

RSpec.describe "packagings/index", type: :view do
  before(:each) do
    assign(:packagings, [
      Packaging.create!(
        :name => "Name"
      ),
      Packaging.create!(
        :name => "Name"
      )
    ])
  end

  it "renders a list of packagings" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
