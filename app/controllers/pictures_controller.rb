class PicturesController < ApplicationController
  def index
  	@pictures = Picture.all
  end

  def show
  	@picture = Picture.find(params[:id])
  end

  private

  def picture_params
  	params.require(:picture).permit(:pic_name, :pic_description, :picimage)
  end
end
