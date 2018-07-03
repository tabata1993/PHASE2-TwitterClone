class Narrate < ApplicationRecord
  mount_uploader :image, NarrateImageUploader

  belongs_to :user
  has_many :favorites,dependent: :destroy
  has_many :favorite_users,through: :faorites, source: :user
  validates :content, length: {in: 1..140}
end
