class Campaign < ApplicationRecord
  has_many :comments
  mount_uploader :campaign_picture, PhotoUploader
  validates :title, presence: true
end
