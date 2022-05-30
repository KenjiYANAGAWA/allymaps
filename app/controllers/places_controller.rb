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
  end

  def show
    @place = Place.find(params[:id])
    @reviews = Review.where(place: @place.id)
    @review = Review.new
    authorize @place
  end

  private

  def place_params
    params.require(:place).permit(:name, :description, :address, :wheelchair_accessibility)
  end
end
