class Place < ApplicationRecord
  has_many :reviews, dependent: :destroy
  has_many_attached :photos

  enum toilet: { no_data: 0, no: 1, has_one: 2, has_many: 3 }, _suffix: true
  enum entrance: { no_data: 0, one_step: 1, two_or_more_steps: 2, ramp: 3, flat: 4 }, _suffix: true
  enum elevator: { no_data: 0,  no: 1, has: 2, nonessential: 3 }, _suffix: true
  enum parking: { no_data: 0, no: 1, has: 2 }, _suffix: true
  enum charging: { no_data: 0, no: 1, has: 2 }, _suffix: true
  enum area: { no_data: 0, no: 1, some: 2, most: 3, all: 4 }, _suffix: true

  validates :name, :address, presence: true

  # geocoding
  geocoded_by :address
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
# place.area? -> returns boolean | false means unknown
# place.area -> returns status key "some", "most", etc |  nil means unknown
# place.some_area? -> return boolean
# place.all_area? -> return boolean
# place
#
# # UPDATE
# place.update_attribute(:area, 'some') -> weird way found on google
# place.area = 1
