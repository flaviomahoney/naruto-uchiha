class AddSizeToRequests < ActiveRecord::Migration[6.0]
  def change
    add_column :requests, :size, :string
  end
end
