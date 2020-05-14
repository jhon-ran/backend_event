class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  # has_secure_password

  # To add an avatar
  has_one_attached :avatar

  has_many :attendances
  has_many :events, through: :attendances
end
