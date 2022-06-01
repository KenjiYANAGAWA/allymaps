class DestinationsController < ApplicationController
  def new
    @place = Place.find(params[:place_id])
    # when creating a new itinerary
    @itinerary = Itinerary.new
    session[:referrer] = "destinations/new"    # to know where to redirect in itineraries/create

    # when adding the destination to an existing itinerary
    @destination = @itinerary.destinations.build # needed for nested form
    authorize @destination
  end

  def create
    @destination = Destination.new(destination_params)
    @destination.place = Place.find(params[:place_id])
    authorize @destination
    if @destination.save
      flash[:notice] = "Added to your itinerary"
      respond_to do |format|
        format.js
        format.html { redirect_to itinerary_path(@destination.itinerary) }
      end
    else
      render :new
    end
  end

  def update      # to update the position when you drag-and-drop
    @destination = Destination.find(params[:id])
    authorize @destination
    @destination.update(destination_params)
    redirect_to itinerary_path(@destination.itinerary)
  end

  private

  def destination_params
    params.require(:destination).permit(:itinerary_id, :position)
  end
end
