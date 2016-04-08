require "rails_helper"

RSpec.describe IngredientInstancesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/ingredient_instances").to route_to("ingredient_instances#index")
    end

    it "routes to #new" do
      expect(:get => "/ingredient_instances/new").to route_to("ingredient_instances#new")
    end

    it "routes to #show" do
      expect(:get => "/ingredient_instances/1").to route_to("ingredient_instances#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/ingredient_instances/1/edit").to route_to("ingredient_instances#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/ingredient_instances").to route_to("ingredient_instances#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/ingredient_instances/1").to route_to("ingredient_instances#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/ingredient_instances/1").to route_to("ingredient_instances#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/ingredient_instances/1").to route_to("ingredient_instances#destroy", :id => "1")
    end

  end
end
