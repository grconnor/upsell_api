require 'rails_helper'

RSpec.describe 'POST /api/v1/orders', type: :request do
  let(:product_to_order) {
    create(:product, name: "Private Parking")
  }

  let(:product_not_to_order) {
    create(:product, name: "Game Drive")
  }

  let(:user) { create(:user)}
  let(:credentials) { user.create_new_auth_token }
  let(:headers) { { HTTP_ACCEPT: 'application/json' }.merge!(credentials)}

  describe 'successfully' do
    before do
      post '/api/v1/orders',
      params: {
        product: product_to_order.id 
      },
      headers: headers
    end

    it 'should respond with a 200 response status' do
      expect(response).to have_http_status 200
    end

    it 'should respond with a success message' do
      expect(response_json['message']).to eq "Item has been added to your cart"

    end

    it 'should respond with order id' do
      expect(response_json).to have_key "id"
    end

    it 'order should have correct product in it' do
      expect(Order.last.order_items.first["product_id"]).to eq product_to_order.id 
    end
  end
end