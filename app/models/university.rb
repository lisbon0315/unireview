class University < ApplicationRecord
  validates :name, presence: true, length: {in: 1..12}
  validates :university, presence: true, length: {in: 1..12}

  mount_uploader :image, ImageUploader

  has_many :lessons
end
