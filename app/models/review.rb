class Review < ApplicationRecord
  validates :content, presence: true
  validates :star, presence: true
  validates :user_id, presence: true
  validetes :lesson_id, presence: true

  belongs_to :lesson
  belongs_to :user
end
