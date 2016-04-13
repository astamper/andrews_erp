class FormsController < ApplicationController
  before_action :set_customer, only: [:show, :edit, :update, :destroy]

  def new_customer_order_form
    @customer = Customer.new
  end

end
