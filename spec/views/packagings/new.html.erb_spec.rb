require 'rails_helper'

RSpec.describe "packagings/new", type: :view do
  before(:each) do
    assign(:packaging, Packaging.new(
      :name => "MyString"
    ))
  end

  it "renders new packaging form" do
    render

    assert_select "form[action=?][method=?]", packagings_path, "post" do

      assert_select "input#packaging_name[name=?]", "packaging[name]"
    end
  end
end
