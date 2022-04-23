class UserRequest < ApplicationRecord
  belongs_to :user

  broadcasts_to ->(request) { [request.user, 'user_request'] }, inserts_by: :prepend
end
