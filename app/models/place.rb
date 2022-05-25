class Place < ApplicationRecord
  has_many :reviews, dependent: :destroy
  has_many_attached :photos

  enum toilet: { no: 1, has_one: 2, has_many: 3 }, _suffix: true
  enum entrance: { one_step: 1, two_or_more_steps: 2, ramp: 3, flat: 4 }, _suffix: true
  enum elevator: {  no: 1, has: 2, nonessential: 3 }, _suffix: true
  enum parking: { no: 1, has: 2 }, _suffix: true
  enum charging: { no: 1, has: 2 }, _suffix: true

  validates :name, :address, presence: true

  # geocoding
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end

# NIL means unknown
# toilet means accessible toilets
# parking emans priority parking
# nonessential_elevator meaning the place does not have to have an elevator. e.g. parks
# could not come up with a better word
