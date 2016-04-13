class RunsController < ApplicationController
  before_action :set_customer, only: [:show, :edit, :update, :destroy]

  def new_run
    @stock = Stock.new
  end

end
