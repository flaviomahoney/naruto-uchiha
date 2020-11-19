class Product < ApplicationRecord
  belongs_to :user
  has_many :reviews
  has_many :requests
  has_many :orders, through: :requests
end
