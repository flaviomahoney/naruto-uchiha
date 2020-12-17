class AddUserToRequests < ActiveRecord::Migration[6.0]
  def change
    add_reference :requests, :user, index: true
  end
end
