class Review < ApplicationRecord
  belongs_to :user
  belongs_to :shoot

  validates :user, :shoot, presence: true
  validates :message, length: { in: 10..1000 }
end
