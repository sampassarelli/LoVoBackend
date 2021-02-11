class Destination < ApplicationRecord
  belongs_to :user
  validates :longitude, :latitude, presence: :true
end
