class MoviesController < ApplicationController
	#before filter

	def index
		@movies = Movie.all
	end

	def show
		@movie = Movie.find(params[:id])
	end

	def new
		@movie = Movie.new

	end

	def create
		@movie = Movie.find(params[:id])
		@movie.save!
	end

	def edit
	end

	def update
	end

	def destroy
	end

	private

end
