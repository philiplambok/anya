class User < ApplicationRecord
  validates :uuid, presence: true
  has_many :user_requests
end
