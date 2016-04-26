require 'rails_helper'

RSpec.describe "packagings/show", type: :view do
  before(:each) do
    @packaging = assign(:packaging, Packaging.create!(
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
  end
end
