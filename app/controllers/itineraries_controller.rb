class ItinerariesController < ApplicationController
  def index
    @itineraries = policy_scope(Itinerary)
    @itinerary = Itinerary.new
    session[:referrer] = "itineraries/index"     # to know where to redirect in itineraries/create
  end

  def create
    @itinerary = Itinerary.new(itinerary_params)
    @itinerary.user = current_user

    # lines below in case validation fails in destinations/new
    @destination = @itinerary.destinations.first
    @place = @destination&.place                 # & means: if @destination exist
    # line below in case validation fails in itineraries#index
    @itineraries = policy_scope(Itinerary)

    authorize @itinerary

    if @itinerary.save
      flash[:notice] = "Added to your itinerary"
      respond_to do |format|
        format.js
        format.html { redirect_to itinerary_path(@itinerary) }
      end
    else
      render session[:referrer]
    end
  end

  def show
    @itinerary = Itinerary.find(params[:id])
    @place = Place.new
    @place.destinations.build
    authorize @itinerary
    @places = @itinerary.places
    @markers = @places.geocoded.map do |place|
      destinations = @itinerary.destinations
      destination = destinations.find { |d| d.place == place }
      {
        lat: place.latitude,
        lng: place.longitude,
        info_window: render_to_string(partial: "shared/info_window", locals: { place: place }),
        image_url: helpers.asset_url("markers/number_#{destination.position}.png"),
        position: destination.position
      }
    end
  end

  # itinerary.destinations.each d.order

  private

  def itinerary_params
    params.require(:itinerary).permit(:name, destinations_attributes: [:place_id])
  end
end
