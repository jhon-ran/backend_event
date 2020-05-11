class User < ApplicationRecord
  # has_secure_password
  has_many :participations
  has_many :events, through: :attendance
end
