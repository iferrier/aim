class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  mount_uploader :picture, PhotoUploader

  has_many :comments
  has_many :selections
  has_many :campaigns, through: :selections
end
