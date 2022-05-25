class Review < ApplicationRecord
  belongs_to :user
  belongs_to :place
  has_many_attached :photos

  validates :content, presence: true
end
