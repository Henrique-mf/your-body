class Shoot < ApplicationRecord
  belongs_to :owner, class_name: 'User', foreign_key: "owner_id"
  has_many :photos, dependent: :destroy
  has_many :reviews, class_name: 'Review', foreign_key: "review_id"
  has_one_attached :photo

  validates :description, :links, :city, :state, :shooting_type, presence: true

  validates :description, length: { in: 10..1000 }

  enum gender: { male: 'male', female: 'female' }

  # Associate the gender with the photographer user, assuming it's stored in owner
  delegate :gender, to: :owner, prefix: true, allow_nil: true

  # Add a method to check if the photographer is a female
  def photographer_female?
    owner_gender == 'female'
  end

  # Add a method to check if the photographer is a male
  def photographer_male?
    owner_gender == 'male'
  end
end
