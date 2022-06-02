class ReviewsController < ApplicationController
  def create
    @review = Review.new(review_params)
    @review.user = current_user
    @place = Place.find(params[:place_id])
    @review.place = @place
    authorize @review
    if @review.save
      respond_to do |format|
        format.html { redirect_to place_path(@place, anchor: "review-#{@review.id}") }
        format.js # look for a JS view with the same action name
      end
    else
      # flash.now[:alert] = "Please add content"
      # redirect_back(fallback_location: place_path(@place, anchor: 'new_review'))
      redirect_to place_path(@place, anchor: 'new_review'), notice: 'Please write about your experience'
    end
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating, photos: [])
  end
end
