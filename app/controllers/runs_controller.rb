class RunsController < ApplicationController
  before_filter :authenticate_user!
  before_action :set_customer, only: [:show, :edit, :update, :destroy]

  def new_run
    @stock = Stock.new
  end

  def index
    @order_items = runs
  end


  def runs
    runvar = Hash.new
    OrderItem.all.each do |order_item|
      if runvar.has_key?(order_item.stock_type.name)
        runvar[order_item.stock_type.identification] = {"quantity" => runvar[order_item.stock_type.identification]+order_item.quantity, "Date" => order_item.order.fob_date}
      else
        runvar[order_item.stock_type.identification] = {"quantity" =>order_item.quantity, "Date" => order_item.order.fob_date}
  ``  end
    end
    return runvar
  end
end

{ font_size: 10, font_family: "Arial" }
