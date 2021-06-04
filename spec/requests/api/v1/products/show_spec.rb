require 'rails_helper'

RSpec.describe "GET /api/v1/products", type: :request do
  let!(:product) { create(:product) }

  describe "successfully" do
    before do
      get "/api/v1/products/#{product.id}"
    end

    it "should respond with a 200 status" do
      expect(response).to have_http_status 200
    end

    it "should respond with a specific product id" do
      expect(response_json["product"]["id"]).to eq product.id
    end

    it "is expected to return a specific product name" do
      expect(response_json["product"]["name"]).to eq "Private Parking"
    end

    it "is expected to return a specific product description" do
      expect(response_json["product"]["description"]).to eq "Get your own exclusive parking space located behind the building, total privacy!"
    end

    it "is expected to return a specific product price" do
      expect(response_json["product"]["price"]).to eq 100
    end
  end

  describe "unsuccessfully" do
    before do
      get "/api/v1/products/700"
    end

    it "should respond with a 404 status" do
      expect(response).to have_http_status :not_found
    end

    it "should respond with an error message" do
      expect(response_json["error_message"]).to eq "Sorry, we could not find that product."
    end
  end
end