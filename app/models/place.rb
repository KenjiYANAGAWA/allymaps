class Place < ApplicationRecord
  has_many :destinations
  has_many :reviews, dependent: :destroy
  has_many_attached :photos

  enum toilet: { no_data: 0, no: 1, has_one: 2, has_many: 3 }, _suffix: true
  enum entrance: { no_data: 0, one_step: 1, two_or_more_steps: 2, ramp: 3, flat: 4 }, _suffix: true
  enum elevator: { no_data: 0,  no: 1, has: 2, nonessential: 3 }, _suffix: true
  enum parking: { no_data: 0, no: 1, has: 2 }, _suffix: true
  enum charging: { no_data: 0, no: 1, has: 2 }, _suffix: true
  enum area: { no_data: 0, not: 1, partly: 2, mostly: 3, fully: 4 }, _suffix: true

  CATEGORY = ['temple', 'park', 'restaurant', 'landmark', 'hotel']
  # validates :category, inclusion: { in: CATEGORY }

  validates :name, presence: true
  validates :address, presence: true
  validates :city, presence: true

  # geocoding
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  # for creating also a destination when you create a place with accommodation true
  accepts_nested_attributes_for :destinations

  # for searching by features in places#show
  include PgSearch::Model
  pg_search_scope :search_by_features,
    against: [ :toilet, :elevator, :parking],
    using: {
      tsearch: { prefix: true } # <-- now `superman batm` will return something!
    }

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
