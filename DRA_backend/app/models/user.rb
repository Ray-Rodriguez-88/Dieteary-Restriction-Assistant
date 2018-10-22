class User < ApplicationRecord
  has_secure_password
  validates :username, uniqueness: { case_sensitive: false }
  has_many :user_restrictions
  has_many :restrictions,  through: :user_restrictions

end
