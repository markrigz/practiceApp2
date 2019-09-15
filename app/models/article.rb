class Article < ApplicationRecord
  belongs_to :user
  has_many :comments, dependent: :destroy

  validates :title, presence: true, length: {minimum: 5} #, uniqueness: {scope: :day, message:'Already posted similar update in past day!'}
  validates :body, presence: true, length: {minimum: 10}
end
