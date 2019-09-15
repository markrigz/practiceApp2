class User < ApplicationRecord
  has_many :articles, dependent: :destroy

  validates :username, presence: true, length: {minimum: 5}, uniqueness: true
  validates :email, presence: true, length: {minimum: 5}, uniqueness: true
  validates :password, presence: true, length: {minimum: 5}

  has_secure_password
end
