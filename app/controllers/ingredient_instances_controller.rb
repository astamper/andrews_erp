class IngredientInstancesController < ApplicationController
  before_filter :authenticate_user!
  before_action :set_ingredient_instance, only: [:show, :edit, :update, :destroy]

  # GET /ingredient_instances
  # GET /ingredient_instances.json
  def index
    @ingredient_instances = IngredientInstance.all
  end

  # GET /ingredient_instances/1
  # GET /ingredient_instances/1.json
  def show
  end

  # GET /ingredient_instances/new
  def new
    @ingredient_instance = IngredientInstance.new
  end

  # GET /ingredient_instances/1/edit
  def edit
  end

  # POST /ingredient_instances
  # POST /ingredient_instances.json
  def create
    @ingredient_instance = IngredientInstance.new(ingredient_instance_params)

    respond_to do |format|
      if @ingredient_instance.save
        format.html { redirect_to @ingredient_instance, notice: 'Ingredient instance was successfully created.' }
        format.json { render :show, status: :created, location: @ingredient_instance }
      else
        format.html { render :new }
        format.json { render json: @ingredient_instance.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ingredient_instances/1
  # PATCH/PUT /ingredient_instances/1.json
  def update
    respond_to do |format|
      if @ingredient_instance.update(ingredient_instance_params)
        format.html { redirect_to @ingredient_instance, notice: 'Ingredient instance was successfully updated.' }
        format.json { render :show, status: :ok, location: @ingredient_instance }
      else
        format.html { render :edit }
        format.json { render json: @ingredient_instance.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ingredient_instances/1
  # DELETE /ingredient_instances/1.json
  def destroy
    @ingredient_instance.destroy
    respond_to do |format|
      format.html { redirect_to ingredient_instances_url, notice: 'Ingredient instance was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ingredient_instance
      @ingredient_instance = IngredientInstance.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ingredient_instance_params
      params.require(:ingredient_instance).permit(:quantity, :unit, :stock_id, :stock_component_id)
    end
end
