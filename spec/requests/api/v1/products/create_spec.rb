require "rails_helper"

RSpec.describe "POST /api/v1/products", type: :request do
  let(:user) { create(:user) }
  let(:credentials) { user.create_new_auth_token }
  let(:headers) { { HTTP_ACCEPT: "application/json" }.merge!(credentials) }
  let(:image) do
    {
      type: "image/png",
      encoder: "iphone_picture",
      data: "biudakwblauidbkw=",
      extension: "png"
    }
  end

  describe "successfully with valid params" do
    before do
      post "/api/v1/products",
           params: {
             product: {
               id: 15,
               name: "Product name",
               description: "Product description",
               price: 150,
               image: image
             },
           },
           headers: headers
    end

    it "is expected to return 201 response status" do
      expect(response.status).to eq 201
    end

    it "is expected to return success message" do
      expect(response_json["message"]).to eq "Product was successfully created"
    end
  end
end
