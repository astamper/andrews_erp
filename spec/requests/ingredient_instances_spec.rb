require 'rails_helper'

RSpec.describe "IngredientInstances", type: :request do
  describe "GET /ingredient_instances" do
    it "works! (now write some real specs)" do
      get ingredient_instances_path
      expect(response).to have_http_status(200)
    end
  end
end
