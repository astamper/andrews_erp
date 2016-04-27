class ProductionsController < ApplicationController
  before_filter :authenticate_user!
  before_action :set_customer, only: [:show, :edit, :update, :destroy]

  def todays_production

  end

  def todays_production_index
    @order_items = OrderItem.all
    production_summary
  end

  def production_summary
    order_items = OrderItem.all
    summary = {}
    order_items.each do |order_item|
      var = Hash[order_item.stock_type.name => Hash[order_item.stock_type.packaging => Hash[order_item.stock_type.unit => order_item.quantity]]]
      summary = summary.deep_merge(var) { |key, this_val, other_val| this_val + other_val }
    end
    @summary = summary
  end

end
