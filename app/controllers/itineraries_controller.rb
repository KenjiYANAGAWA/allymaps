class ItinerariesController < ApplicationController
  def index
    @itineraries = policy_scope(Itinerary)
    @itinerary = Itinerary.new
  end

  def new
    @itineraries = policy_scope(Itinerary)
    @itinerary = Itinerary.new
    authorize @itinerary
  end

  def create
    @itinerary = Itinerary.new(itinerary_params)
    @itinerary.user = current_user
    authorize @itinerary

    if @itinerary.save
      redirect_to itinerary_path(@itinerary)
    else
      render :new
    end
  end

  def show
    @itinerary = Itinerary.find(params[:id])
    authorize @itinerary
  end

  private

  def itinerary_params
    params.require(:itinerary).permit(:name)
  end
end
