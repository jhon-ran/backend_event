class Event < ApplicationRecord
  has_many :attendances
  has_many :users, through: :attendance
end
