class PiesController < ApplicationController
  def index
  	@pies = Pie.all
  	@meta_title        = ""
    @meta_description  = ""
    @keywords          = ""
  end
end
