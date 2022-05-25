class Place < ApplicationRecord
  has_many :reviews, dependent: :destroy
  has_many_attached :photos

  # enum wheelchair_accessibility: { unknown: 0, inaccessible: 1, fair: 2, accessible: 3 }
  # unknown is NIL
  enum accessible_toilet: { no: 1, has_one: 2, has_many: 3 }, _suffix: true
  enum entrance: { one_step: 1, two_or_more_steps: 2, ramp: 3, flat: 4 }, _suffix: true
  enum elevator: {  no: 1, has: 2, uncritical: 3 }, _suffix: true
  enum priority_parking: { no: 1, has: 2 }, _suffix: true
  enum charging: { no: 1, has: 2 }, _suffix: true

  validates :name, :address, presence: true

  # geocoding
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
