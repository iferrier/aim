class Campaign < ApplicationRecord
  has_many :comments
  mount_uploader :campaign_picture, PhotoUploader
  mount_uploader :brand_logo, PhotoUploader
  validates :title, presence: true
end
