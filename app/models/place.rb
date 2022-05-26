class Place < ApplicationRecord
  has_many :reviews, dependent: :destroy
  has_many_attached :photos

  enum toilet: { no_data: 0, no: 1, has_one: 2, has_many: 3 }, _suffix: true
  enum entrance: { no_data: 0, one_step: 1, two_or_more_steps: 2, ramp: 3, flat: 4 }, _suffix: true
  enum elevator: { no_data: 0,  no: 1, has: 2, nonessential: 3 }, _suffix: true
  enum parking: { no_data: 0, no: 1, has: 2 }, _suffix: true
  enum charging: { no_data: 0, no: 1, has: 2 }, _suffix: true
  enum area: { no_data: 0, no: 1, some: 2, most: 3, all: 4 }, _suffix: true

  CATEGORY = ['temple', 'park', 'restaurant', 'landmark', 'hotel']
  validates :category, inclusion: { in: CATEGORY }

  validates :name, :city, presence: true

  # geocoding
  geocoded_by :name
  after_validation :geocode, if: :will_save_change_to_address?
end

# toilet means accessible toilets
# parking emans priority parking
# area means accessible area [None, some, most, all]
# nonessential_elevator meaning the place does not have to have an elevator. e.g. parks
#
# CRUD for enum attributes
#
# # READ
# place.area -> returns status key "some", "most", etc |  "no_data" or nil means unknown
# place.area? -> returns boolean | false means unknown
# place.some_area? -> return boolean
# place.all_area? -> return boolean
#
# # UPDATE
# place.area = "some"
