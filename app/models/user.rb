class User < ApplicationRecord
  has_many :cats
  has_many :comments
  has_secure_password

  validates :email, presence: true, uniqueness: true
end
