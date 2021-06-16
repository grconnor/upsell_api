class ProductsIndexSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :price, :image
end
