require 'rails_helper'

RSpec.describe "GET /api/v1/products", type: :request do
  let!(:product) do
    3.times do
      create(:product)
    end
  end
  describe "GET /api/v1/products" do
    before do
      get '/api/v1/products'
    end

    it "is expected to return a 200 response status" do
      expect(response.status).to eq 200
    end

    it "is expected to return 3 products" do
      expect(response_json["products"].count).to eq 3
    end

    it "is expected to return a specific article name" do
      expect(response_json["products"].first["name"]).to eq "Private Parking"
    end

    it "is expected to return a specific article description" do
      expect(response_json["products"].second["description"]).to eq "Get your own exclusive parking space located behind the building, total privacy!"
    end

    it "is expected to return a specific article id" do
      expect(response_json["products"].third["id"]).to be_integer
    end
  end
end