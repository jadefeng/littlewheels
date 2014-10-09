class CommentsController < ApplicationController
	def show
		@comment = Comment.find params[:id]
	end

	def new
		@comment = Comment.new
	end

	def create
        trip.comments.create(comment_params) do |comment|
            comment.user_id = @current_user.id
    	end
    redirect_to trip_path(@trip)
	end

	def edit
		@comment = Comment.find params[:id]
	end

	def update
		comment = Comment.find params[:id]
		comment.update comment_params
		redirect_to trip_path(comment.trip_id)
	end

	def destroy
        comment = Comment.find params[:id]
        comment.destroy
        redirect_to trip_path(comment.trip_id)
    end

    private

    def comment_params
        params.require(:comment).permit(:user_id, :comment_text, :trip_id)
    end

    def trip
        @trip = Trip.find(params[:trip_id])
    end

end
