class Destination < ApplicationRecord
  belongs_to :place
  belongs_to :itinerary

  acts_as_list
end
