class Comment < ApplicationRecord
  belongs_to :article

  validates :commenter, presence: true, length: {minimum: 5}
  validates :comment, presence: true, length: {minimum: 2}
end
