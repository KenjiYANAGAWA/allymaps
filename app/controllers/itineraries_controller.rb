class ItinerariesController < ApplicationController
  def index
    @itineraries = policy_scope(Itinerary)
    @itinerary = Itinerary.new
    session[:referrer] = "itineraries/index"     # to know where to redirect in itineraries/create
  end

  def create
    @itinerary = Itinerary.new(itinerary_params)
    @itinerary.user = current_user

    # lines below in case validation fils in destinations/new
    @destination = @itinerary.destinations.first
    @place = @destination&.place                 # & means: if @destination exist
    # line below in case validation fils in itineraries#index
    @itineraries = policy_scope(Itinerary)

    authorize @itinerary

    if @itinerary.save
      redirect_to itinerary_path(@itinerary)
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
    @markers = @places.geocoded.map.with_index do |place, index|
      {
        lat: place.latitude,
        lng: place.longitude,
        info_window: render_to_string(partial: "shared/info_window", locals: { place: place }),
        image_url: helpers.asset_url("markers/number_#{index + 1}.png")
      }
    end
  end

  private

  def itinerary_params
    params.require(:itinerary).permit(:name, destinations_attributes: [:place_id])
  end
end
