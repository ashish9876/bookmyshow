class TheatresController < ApplicationController

	def index
		@theatres = Theatre.all
		$movie = Movie.find(params[:movie_id])
	end


	def show
		@theatre = Theatre.find(params[:id])
		$movie
	end

	def no_of_seat_select
		@theatre = Theatre.find(params[:theatre][:id])
		@theatre.update(seat: params[:theatre][:seat])
		$movie
	end


	private

	def theatre_params
		params.require(:theatre).permit(:name, :movie_name, :show_time, :seat)
	end
end
