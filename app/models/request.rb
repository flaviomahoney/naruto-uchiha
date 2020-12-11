class Request < ApplicationRecord
  belongs_to :product

  STATUS = ['To be Approved', 'Approved']

  validates :status, presence: true, inclusion: { in: STATUS }
end
