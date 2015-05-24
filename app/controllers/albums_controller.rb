class AlbumsController < ApplicationController
  def index
  	@albums = Album.all
    
  end

  def show
  	@album = Album.find(params[:id])
  	@pictures = @album.pictures
    #@albums = Album.all.paginate(:page => params[:page], :per_page => 20)
    #params[:page] = 1 if params[:page].nil?
    #params[:page] += 1
  end

  private

  def album_params
  	params.require(:album).permit(:name, :description, :image)
  end
end
