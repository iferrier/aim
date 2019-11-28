class Campaign < ApplicationRecord
  has_many :comments, dependent: :destroy
  has_many :selections, dependent: :destroy
  has_many :users, through: :selections
  mount_uploader :campaign_picture, PhotoUploader
  mount_uploader :brand_logo, PhotoUploader
  validates :title, presence: true
end
