class Api::V1::OrdersController < ApplicationController
  before_action :authenticate_user!

  def create
    order = Order.create(user: current_user)
    order.order_items.create(product_id: params["product"])
    render json: { id: order.id, message: "Item has been added to your cart" }
  end
end
