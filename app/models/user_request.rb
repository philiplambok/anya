class UserRequest < ApplicationRecord
  belongs_to :user

  after_create_commit do |request|
    broadcast_prepend_later_to request.user, 'user_request'
  end
end
