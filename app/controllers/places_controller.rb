class PlacesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @places = policy_scope(Place)
    if params[:toilet]
      @places = @places.where("toilet = 2 OR toilet = 3")
    end
    if params[:elevator]
      @places = @places.where("elevator = 2 OR elevator = 3")
    end
    if params[:parking]
      @places = @places.where(parking: 2)
    end
    @places = @places.near(params[:address], 6) if params[:address]
    @markers = @places.geocoded.map do |place|
      {
        lat: place.latitude,
        lng: place.longitude,
        info_window: render_to_string(partial: "shared/info_window", locals: { place: place })
        # image_url: helpers.asset_url("REPLACE_THIS_WITH_YOUR_IMAGE_IN_ASSETS")
      }
    end
  end

  def new
    @place = Place.new
    authorize @place
  end

  def create
    @place = Place.new(place_params)
    authorize @place
    if @place.save
      if @place.destinations.first&.itinerary # &: so not to call itinerary on nill
        # todo : refactor this later
        redirect_to itinerary_path(@place.destinations.first.itinerary)
      else
        redirect_to place_path(@place)
      end
    else
      # todo this later with session things
      render :new
    end
  end

  def show
    @place = Place.find(params[:id])
    
    
    @itinerary = Itinerary.new
    @itinerary.destinations.build
    @destination = Destination.new

    @reviews = Review.where(place: @place.id)
    @review = Review.new

    authorize @place

  end

  private

  def place_params
    params.require(:place).permit(:name, :description, :address, :city, :accommodation, :area, :toilet, :elevator, :parking, photos: [], destinations_attributes: [:itinerary_id])
  end
end
