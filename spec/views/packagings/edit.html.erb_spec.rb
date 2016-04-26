require 'rails_helper'

RSpec.describe "packagings/edit", type: :view do
  before(:each) do
    @packaging = assign(:packaging, Packaging.create!(
      :name => "MyString"
    ))
  end

  it "renders the edit packaging form" do
    render

    assert_select "form[action=?][method=?]", packaging_path(@packaging), "post" do

      assert_select "input#packaging_name[name=?]", "packaging[name]"
    end
  end
end
