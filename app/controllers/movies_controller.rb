class MoviesController < ApplicationController

	def index
		@movies = Movie.all
	end

	def new
		@movie = Movie.new
	end

	def create
		if current_user.has_role? :admin
			@movie = current_user.movies.create(movie_params)
			if @movie.save
				message = " '#{@movie.name}' was just added."
				flash[:success] = "Movie was successfully created."
				redirect_to root_path
				TwilioTextMessenger.new(message).call
			else
				flash.now[:error] = @movie.errors.full_messages
				render "new"
			end
		end	
	end

	def show
		@movie = Movie.find(params[:id])
	end

	def destroy
		@movie = Movie.find(params[:id])
		@movie.destroy
		flash[:success] = "Movie was successfully destroyed."
		redirect_to root_path

	end

	private

	def movie_params
		params.require(:movie).permit(:name, :category, :avatar)
	end
end
