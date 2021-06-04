class Api::V1::ProductsController < ApplicationController
  
  rescue_from ActiveRecord::RecordNotFound, with: :render_active_record_error

  def index
    products = Product.all

    render json: { products: products }
  end

  def show
    product = Product.find(params[:id])
    render json: { product: product }
  end

  private

  def render_active_record_error
    render json: { error_message: "Sorry, we could not find that product." }, status: :not_found
  end
end
