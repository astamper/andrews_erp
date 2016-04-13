class Customer < ActiveRecord::Base
  has_many :orders
  has_many :shipping_addresses
  validates_formatting_of :email, using: :email
  validates_formatting_of :phone, using: :us_phone

  accepts_nested_attributes_for :shipping_addresses, reject_if: :all_blank, allow_destroy: true
  accepts_nested_attributes_for :orders, reject_if: :all_blank, allow_destroy: true


  def casual_id
    if customer_type == "Individual"
      return first_name+" "+last_name
    else
      return company
    end
  end



  def open_count
    return orders.where({:status => "Open"}).count
  end
end
