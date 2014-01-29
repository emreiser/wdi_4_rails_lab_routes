class CommentsController < ApplicationController

	before_action :get_movie

	def index
		@comments = @movie.comments
	end

	def show
	end

	def new
		@comment = Comment.new
	end

	def create
		@movie.comments << Comment.create!(comment_params)
		redirect_to movie_path(@movie.id)
	end


	private

	def comment_params
		params.require(:comment).permit(:body, :movie_id)
	end

	def get_movie
		@movie = Movie.find(params[:movie_id])
	end



end
