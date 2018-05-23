class User < ApplicationRecord
  geocoded_by :address
  after_validation :geocode # lookup the address and stoer its GPS coordinates(on create)

  has_many :cats
  has_many :comments
  has_secure_password

  validates :email, presence: true, uniqueness: true
end
