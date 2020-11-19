class Order < ApplicationRecord
  belongs_to :user
  has_many :requests
  has_many :products, through: :requests
end
