class ShippingAddress < ActiveRecord::Base
  belongs_to :customer
  has_many :orders
  validates_formatting_of :zip, using: :us_zip
  validates_formatting_of :email, using: :email
end
