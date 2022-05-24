class Itinerary < ApplicationRecord
  belongs_to :user
  has_many :destinations, dependent: :destroy
  has_many :places, through: :destinations

  validates :name, presence: true, uniqueness: true
end
