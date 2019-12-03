class Campaign < ApplicationRecord
  has_many :comments, dependent: :destroy
  has_many :selections, dependent: :destroy
  has_many :users, through: :selections

  mount_uploader :campaign_picture, PhotoUploader
  mount_uploader :brand_logo, PhotoUploader

  validates :title, presence: true

  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?
end
