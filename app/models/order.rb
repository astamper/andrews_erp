class Order < ActiveRecord::Base
  belongs_to :customer
  belongs_to :shipping_address
  has_many :order_items

  accepts_nested_attributes_for :order_items, reject_if: :all_blank, allow_destroy: true


  def casual_id
    # return customer.casual_id+" "+fob_date.to_s
    return 0
  end

  def status
    var = 0
    order_items.each do |order_item|
      if order_item.stock != nil
        var = var+1
      end
  ``end

    if var > 0
      return "Closed"
    else
      return "Open"
    end
  end

  def percent
    var = 0
    order_items.each do |order_item|
      if order_item.stock != nil
        var = var+1
      end
  ``end
    return var
  end

end
