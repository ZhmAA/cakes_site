class AlbumsController < ApplicationController
  def index
  	@albums = Album.all
  end

  def show
  	@album = Album.find(params[:id])
  	@pictures = @album.pictures
  end

  private

  def album_params
  	params.require(:album).permit(:name, :description, :image)
  end
end
