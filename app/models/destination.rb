class Destination < ApplicationRecord
  belongs_to :place
  belongs_to :itinerary
end
