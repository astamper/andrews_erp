FactoryGirl.define do
  factory :shipping_address do
    first_name "MyString"
    last_name "MyString"
    address_1 "MyString"
    address_2 "MyString"
    city "MyString"
    state "MyString"
    country "MyString"
    zip "MyString"
    email "MyString"
    phone "MyString"
    customer nil
  end
end
