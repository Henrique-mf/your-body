class Photo < ApplicationRecord
  belongs_to :user
  belongs_to :shoot

  validates :user, :shoot, presence: true

end
