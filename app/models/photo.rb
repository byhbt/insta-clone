class Photo < ApplicationRecord
  belongs_to :user

  has_one_attached :image

  validates :image, attached: true, content_type: %i[png jpg jpeg gif]
  validates :description, length: { minimum: 1, maximum: 500 }
end
