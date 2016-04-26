class FormsController < ApplicationController
  before_filter :authenticate_user!
  before_action :set_customer, only: [:show, :edit, :update, :destroy]

  def new_customer_order_form
    @qwerty = "new_customer"
    @customer = Customer.new
    @customer_list = Customer.all
    list_stock_types
    list_categories
    list_units
  end

  def existing_customer_order_form
    @qwerty = "existing_customer"
    @customer = Customer.where({id: params[:id]})
    @customer = @customer[0]
    @order = Order.new
    @customer_list = Customer.all
    list_stock_types
    list_categories
    list_units
  end

















  def list_categories
    @categories = []
    stock_types = StockType.all
    stock_types.each do |stock_type|
      @categories.push(stock_type.category)
    end
    @categories = @categories.uniq
  end

  def list_packagings
    @packagings = {}
    stock_types = StockType.all
    stock_types.each do |stock_type|
      if @packagings[stock_type.packaging] != nil
        @packagings[stock_type.packaging].push(stock_type.unit)
      else
        @packagings[stock_type.packaging] = [stock_type.unit]
      end
      @packagings[stock_type.packaging] = @packagings[stock_type.packaging].uniq
    end
  end

  def list_units
    @units = {}
    stock_types = StockType.all
    stock_types.each do |stock_type|
      if @units[stock_type.unit] != nil
        @units[stock_type.unit].push(stock_type.identification)
      else
        @units[stock_type.unit] = [stock_type.identification]
      end
      @units[stock_type.unit] = @units[stock_type.unit].uniq
    end
  end

  def list_stock_types
    @stock_types = {}
    database_stock_types = StockType.all
    database_stock_types.each do |database_stock_type|
      if @stock_types[database_stock_type.identification] != nil
        @stock_types[database_stock_type.identification].push(database_stock_type.category)
      else
        @stock_types[database_stock_type.identification] = [database_stock_type.category]
      end
      @stock_types[database_stock_type.identification] = @stock_types[database_stock_type.identification].uniq
    end
  end

end
