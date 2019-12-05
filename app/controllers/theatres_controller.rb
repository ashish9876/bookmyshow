class TheatresController < ApplicationController

	def index
		@theatres = Theatre.all
	end
end
