class StatPagesController < ApplicationController

	def home
		@albums = Album.all
	end
	
end
