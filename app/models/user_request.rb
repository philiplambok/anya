class UserRequest < ApplicationRecord
  belongs_to :user

  broadcasts_to ->(request) { [request.user, 'request'] }, inserts_by: :prepend
end
