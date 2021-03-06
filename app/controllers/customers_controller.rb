class CustomersController < ApplicationController
  before_filter :authenticate_user!
  before_action :set_customer, only: [:show, :edit, :update, :destroy]

  # GET /customers
  # GET /customers.json
  def index
    @customers = Customer.all
  end

  # GET /customers/1
  # GET /customers/1.json
  def show
    @orders = Order.where({customer_id: @customer})
  end

  # GET /customers/new
  def new
    @customer = Customer.new
  end

  def new_customer_order
    @customer = Customer.where({id: params[:id]})
    @customer = @customer[0]
    @order = Order.new
  end

  # GET /customers/1/edit
  def edit
  end

  # POST /customers
  # POST /customers.json
  def create
    @customer = Customer.new(customer_params)

    respond_to do |format|
      if @customer.save
        format.html { redirect_to @customer, notice: 'Customer was successfully created.' }
        format.json { render :show, status: :created, location: @customer }
      else
        format.html { render :new }
        format.json { render json: @customer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /customers/1
  # PATCH/PUT /customers/1.json
  def update
    respond_to do |format|
      if @customer.update(customer_params)
        format.html { redirect_to @customer, notice: 'Customer was successfully updated.' }
        format.json { render :show, status: :ok, location: @customer }
      else
        format.html { render :edit }
        format.json { render json: @customer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /customers/1
  # DELETE /customers/1.json
  def destroy
    @customer.destroy
    respond_to do |format|
      format.html { redirect_to customers_url, notice: 'Customer was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_customer
      @customer = Customer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def customer_params
      params.require(:customer).permit(:first_name, :last_name, :company, :customer_type, :email, :phone, shipping_addresses_attributes: [:id, :first_name, :last_name, :address_1, :address_2, :city, :state, :country, :zip, :email, :phone, :customer_id, :order_id, :_destroy], orders_attributes: [:first_name, :last_name, :fob_date, :fob_time, :paid, :shipping_type, :customer_id, :shipping_address_id], order_items_attributes: [:id, :quantity, :order_id, :stock_type_id,:stock_id, :_destroy])
    end
end
