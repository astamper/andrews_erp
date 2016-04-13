class RunsController < ApplicationController
  before_filter :authenticate_user!
  before_action :set_customer, only: [:show, :edit, :update, :destroy]

  def new_run
    @stock = Stock.new
  end

end
