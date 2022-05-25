class Place < ApplicationRecord
  has_many :reviews, dependent: :destroy
  has_many_attached :photos

  # enum wheelchair_accessibility: { unknown: 0, inaccessible: 1, fair: 2, accessible: 3 }
  enum accessible_toilet: { unknown: 0, no: 1, one: 2, many: 3 }
  enum entrance: { unknown: 0, one_step: 1, two_or_more_steps: 2, ramp: 3, flat: 4 }
  enum elevator: { unknown: 0, no: 1, yes: 2, na: 3 }
  enum priority_parking: { unknown: 0, no: 1, yes: 2 }
  enum charging: { unknown: 0, no: 1, yes: 2 }

  validates :name, :address, :accessible_toilet, :entrance, :elevator, :priority_parking, :charging, presence: true

  # geocoding
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
