class Api::V1::ProductsController < ApplicationController
  rescue_from ActiveRecord::RecordNotFound, with: :render_active_record_error
  before_action :authenticate_user!, only: :create

  def index
    products = Product.all.with_attached_image
    render json: products, each_serializer: ProductsIndexSerializer
  end

  def show
    product = Product.find(params[:id])
    render json: { product: product }
  end

  def create
    product = Product.create(product_params)
    if product.persisted? && attach_image(product)
      render json: { message: "Product was successfully created" }, status: :created
    else
      binding.pry
    end
  end

  private

  def attach_image(product)
    params_image = params[:product][:image]
    if params_image.present?
      DecodeService.attach_image(params_image, product.image)
    end
  end

  def product_params
    params.require(:product).permit(:name, :description, :price)
  end

  def render_active_record_error
    render json: { error_message: "Sorry, we could not find that product." }, status: :not_found
  end

  def product_params
    params.require(:product).permit(:name, :description, :price, :id, :image)
  end
end
