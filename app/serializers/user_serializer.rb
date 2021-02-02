class UserSerializer < ActiveModel::Serializer
  has_many :destinations
  attributes :id, :username, :email, :first_name, :last_name
end
