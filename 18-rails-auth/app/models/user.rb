class User < ApplicationRecord
  has_secure_password

  has_many :posts

  validates :name, presence: true
  validates :username, presence: true, uniqueness: { case_sensitive: false }
  validates :password, presence: true, length: { minimum: 6 }
end