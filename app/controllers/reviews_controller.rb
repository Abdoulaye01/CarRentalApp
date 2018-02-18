class ReviewsController < ApplicationController
	#before_action :authorise
	
	def create
	  @rental = Rental.find params[:rental_id]
	  @review = @rental.reviews.new(review_params)
	  @review.customer_id = @current_customer.try(:id)
	  @review.save
	respond_to do |format|
		format.html{redirect_to @rental}
	 end
	end
	private
	def review_params
		params.require(:review).permit(:content, :customer_id, :rental_id, :stars)
	end

end
