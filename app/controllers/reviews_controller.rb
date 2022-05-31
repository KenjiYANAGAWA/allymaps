class ReviewsController < ApplicationController
  def create
    @review = Review.new(review_params)
    @review.user = current_user
    @place = Place.find(params[:place_id])
    @review.place = @place
    authorize @review
    # raise
    if @review.save
      respond_to do |format|
        format.html { redirect_to place_path(@place, anchor: "review-#{@review.id}") }
        format.js # look for a JS view with the same action name
      end
    else
      render 'places/show'
    end
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating, photos: [])
  end
end
