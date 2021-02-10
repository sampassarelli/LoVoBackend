class User < ApplicationRecord
  has_many :destinations
  has_secure_password

  validates :first_name, :last_name, :email, presence: :true
  validates :email, :username, uniqueness: true 
  validates :email, email: true
end
