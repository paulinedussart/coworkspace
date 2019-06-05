class ReviewsController < ApplicationController
  def create
    @space = Space.find(params[:space_id])
    @review = current_user.reviews.build(review_params)
    @review.space = @space
    if @review.save
      redirect_to space_path(@space)
    else
      flash[:alert] = "Something went wrong."
      render 'space/show'
    end
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
