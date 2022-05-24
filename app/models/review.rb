class Review < ApplicationRecord
  belongs_to :user
  belongs_to :place
  has_many_attached :photos

  enum wheelchair_accessibility: { unknown: 0, inaccessible: 1, fair: 2, accessible: 3 }
  validates :content, :wheelchair_accessibility, presence: true
end
