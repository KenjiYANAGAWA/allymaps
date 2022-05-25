class DestinationsController < ApplicationController
  def new
    @itinerary = Itinerary.new
    @destination = Destination.new
    @place = Place.find(params[:place_id])

    @itinerary.destinations.build              # needed for nested form
    session[:referrer] = "destinations/new"    # to know where to redirect in itineraries/create

    authorize @destination
  end

  def create
    @destination = Destination.new(destination_params)
    @destination.place = Place.find(params[:place_id])
    authorize @destination
    if @destination.save
      redirect_to itinerary_path(@destination.itinerary)
    else
      render :new
    end
  end

  private

  def destination_params
    params.require(:destination).permit(:itinerary_id)
  end
end