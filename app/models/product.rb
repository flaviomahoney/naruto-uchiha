class Product < ApplicationRecord
  belongs_to :user
  has_many :orders, through: :requests
end
