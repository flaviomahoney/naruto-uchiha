class Review < ApplicationRecord
  belongs_to :product
  belongs_to :user
  
  validates :user_id, uniqueness: :true
end
