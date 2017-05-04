class User < ApplicationRecord
  has_secure_password
  has_many :orders

  validates :name, presence: {message:"You must enter a user name"}
  validates :password_digest, length: {in: 5..15}







end
