class DestinationSerializer < ActiveModel::Serializer
  attributes :id
  attributes :image, :name, :date_visited, :address, :category, :comment, :visited, :cost, :attendees, :user_id, :latitude, :longitude
end
