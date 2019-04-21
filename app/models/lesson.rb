class Lesson < ApplicationRecord
  has_many :reviews
  belongs_to :university
end
