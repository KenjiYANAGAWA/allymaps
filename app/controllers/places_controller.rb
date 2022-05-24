class PlacesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @places = policy_scope(Place)
  end

  def new
  end

  def create
  end

  def show
  end
end
