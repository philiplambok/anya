class UserRequest < ApplicationRecord
  belongs_to :user

  after_create_commit do |request|
    broadcast_prepend_to request.user, 'user_request'
    broadcast_replace_to request.user, 'user_request', target: 'clear-history-btn', partial: 'home/clear_history_btn', locals: { current_user: request.user }
  end
end
