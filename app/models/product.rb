class Product < ApplicationRecord
  validates_presence_of :id, :name, :description, :price
  belongs_to :User, optional: true

  has_one_attached :image, :dependent => :destroy
end
