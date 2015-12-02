class CandiesController < ApplicationController
  def index
  	@candies = Candy.all
  	@meta_title        = ""
    @meta_description  = ""
    @keywords          = ""
  end
end
