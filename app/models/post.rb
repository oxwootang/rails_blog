class Post < ApplicationRecord
  has_many :comments, dependent: :destroy
  # requires post titles be present and have a minimum length of 5 characters
  validates :title, presence: true, length: { minimum: 5 }
end
