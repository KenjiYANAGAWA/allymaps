class PlacesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @places = policy_scope(Place)
    @places = @places.near(params[:address], 50) if params[:address]
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
    authorize @place
  end

  private

  def place_params
    params.require(:place).permit(:name, :description, :address, :city, :accommodation, :wheelchair_accessibility, destinations_attributes: [:itinerary_id])
  end
end
