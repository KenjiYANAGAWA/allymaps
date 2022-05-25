class DestinationsController < ApplicationController
  def new
    @destination = Destination.new
    @place = Place.find(params[:place_id])
    authorize @destination
    # raise
  end

  def create

  end
end
