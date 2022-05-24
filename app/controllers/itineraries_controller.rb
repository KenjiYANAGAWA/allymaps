class ItinerariesController < ApplicationController
  def index
    @itineraries = policy_scope(Itinerary)
  end

  def new
  end

  def create
  end

  def show
  end
end
