class Product < ApplicationRecord
  validates_presence_of :id, :name, :description, :price
  belongs_to :User, optional: true
end
