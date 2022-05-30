class Review < ApplicationRecord
  belongs_to :user
  belongs_to :place
  has_many_attached :photos
  RATINGS = [1, 2, 3, 4, 5]
  validates :rating, inclusion: { in: RATINGS }, numericality: { only_integer: true }
  validates :content, presence: true
end
