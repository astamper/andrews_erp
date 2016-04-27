class OrderItem < ActiveRecord::Base
  belongs_to :order
  belongs_to :stock_type
  belongs_to :stock

  def production_summary
    var = ""
    OrderItem.each do |orderitem|
      var += "yo"
    end
    return var
  end

end
