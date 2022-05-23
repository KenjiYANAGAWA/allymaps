class Place < ApplicationRecord
  has_many :reviews, dependent: :destroy

  enum wheelchair_accessibility: { unknown: 0, inaccessible: 1, fair: 2, accessible: 3 }
  validates :name, :wheelchair_accessibility, :address, presence: true

  # geocoding
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
