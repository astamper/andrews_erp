require 'rails_helper'

RSpec.describe "StockTypes", type: :request do
  describe "GET /stock_types" do
    it "works! (now write some real specs)" do
      get stock_types_path
      expect(response).to have_http_status(200)
    end
  end
end
