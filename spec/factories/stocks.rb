FactoryGirl.define do
  factory :stock do
    initial_quantity 1.5
    purchase_date "2016-04-08"
    expiration_date "2016-04-08"
    purchase_price 1.5
    batch_number "MyString"
    supplier nil
    stock_type nil
    unit "MyString"
  end
end
