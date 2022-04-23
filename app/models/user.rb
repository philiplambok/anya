class User < ApplicationRecord
  validates :uuid, presence: true
end
