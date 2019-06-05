class ReviewsController < ApplicationController
  def create
    @space = Space.find(params[:space_id])
    @review = current_user.reviews.build(review_params)
    @review.space = @space
    if @review.save
      respond_to do |format|
        format.html { redirect_to space_path(@space) }
        format.js # <-- will render `app/views/reviews/create.js.erb`
      end
    else
      flash[:alert] = "Something went wrong."
      respond_to do |format|
        format.html { render 'space/show' }
        format.js
      end
    end
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
