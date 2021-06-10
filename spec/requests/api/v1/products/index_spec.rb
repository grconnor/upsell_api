require 'rails_helper'

RSpec.describe "GET /api/v1/products", type: :request do
  let!(:product) do
    1.times do
      create(:product, id: 1, name: "Private Parking", price: 100)
      create(:product, id: 2, name: "Game Drive")
      create(:product, id: 3, name: "Day Picnic", description: "Take in the breathtaking views while enjoying a relaxed picnic amongst the reserve inhabitants.")
    end
  end
  describe "successfully" do
    before do
      get '/api/v1/products'
    end

    it "is expected to return a 200 response status" do
      expect(response.status).to eq 200
    end

    it "is expected to return 3 products" do
      expect(response_json["products"].count).to eq 3
    end

    it "is expected to return a specific article id" do
      expect(response_json["products"].first["id"]).to eq 1
    end

    it "is expected to return a specific article name" do
      expect(response_json["products"].second["name"]).to eq "Game Drive"
    end

    it "is expected to return a specific article description" do
      expect(response_json["products"].third["description"]).to eq "Take in the breathtaking views while enjoying a relaxed picnic amongst the reserve inhabitants."
    end

    it "is expected to return a specific article price" do
      expect(response_json["products"].first["price"]).to eq 100
    end
  end
end