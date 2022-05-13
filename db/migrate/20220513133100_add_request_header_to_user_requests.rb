class AddRequestHeaderToUserRequests < ActiveRecord::Migration[7.0]
  def change
    add_column :user_requests, :request_header, :text
  end
end
