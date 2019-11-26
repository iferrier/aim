class Campaign < ApplicationRecord
  validates :title, presence: true
end
