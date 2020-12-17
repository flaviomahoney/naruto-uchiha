class Request < ApplicationRecord
  belongs_to :product
  belongs_to :user

  STATUS = ['Rejected','Pending Approval', 'Approved']

  validates :status, presence: true, inclusion: { in: STATUS }
end
