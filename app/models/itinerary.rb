class Itinerary < ApplicationRecord
  belongs_to :user
  has_many :destinations, dependent: :destroy
  has_many :places, through: :destinations
  has_one_attached :photo

  validates :name, presence: true

  # to be able to create a new destination when creating a new itinerary
  accepts_nested_attributes_for :destinations
end
