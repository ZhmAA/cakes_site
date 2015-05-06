class StatPagesController < ApplicationController

	def home
		@albums = Album.all
	end

	def contacts
		
	end
	
	def signup
		redirect_to '/404'
	end
end
