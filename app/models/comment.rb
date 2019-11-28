class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :campaign

  validates :content, presence: true
end
