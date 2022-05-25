class Place < ApplicationRecord
  has_many :reviews, dependent: :destroy
  has_many_attached :photos

  # enum wheelchair_accessibility: { unknown: 0, inaccessible: 1, fair: 2, accessible: 3 }
  validates :name, :address, presence: true

  # geocoding
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
