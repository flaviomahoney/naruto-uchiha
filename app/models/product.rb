class Product < ApplicationRecord
  belongs_to :user
  has_many :reviews
  has_many :requests
  has_many :users, through: :requests
  has_many_attached :image

  SIZE = ['PP', 'P', 'M', 'G', 'GG']

  validates :size, presence: true, inclusion: { in: SIZE }
end
