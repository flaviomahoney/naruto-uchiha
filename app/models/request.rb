class Request < ApplicationRecord
  belongs_to :product
  belongs_to :order

  STATUS = ['To be Approved', 'Approved']

  validates :status, presence: true, inclusion: { in: STATUS }
end
