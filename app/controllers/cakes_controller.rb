class CakesController < ApplicationController
  def index
  	@cakes = Cake.all
  	@meta_title        = ""
    @meta_description  = ""
    @keywords          = ""
  end
end
