class Selection < ApplicationRecord
  belongs_to :user
  belongs_to :campaign
  validates :user, uniqueness: { scope: :campaign }
end
