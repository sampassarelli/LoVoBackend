class Destination < ApplicationRecord
  belongs_to :user
  # has_one_attached :image
  validates :longitude, :latitude, presence: :true
end
