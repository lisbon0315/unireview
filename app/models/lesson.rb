class Lesson < ApplicationRecord
  validates :name, presense: true, length: {in: 1..15}
  validates :professor_name, presense: true, length: {in: 1..15}
  validates :university_id, presence: true

  has_many :reviews
  belongs_to :university
end
