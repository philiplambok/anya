class User < ApplicationRecord
  validates :uuid, presence: true, uniqueness: { case_sensitive: true }
  has_many :user_requests
end
