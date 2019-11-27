class Campaign < ApplicationRecord
  has_many :comments
  has_many :selections
  has_many :users, through: :selections
  mount_uploader :campaign_picture, PhotoUploader
  mount_uploader :brand_logo, PhotoUploader
  validates :title, presence: true
end
