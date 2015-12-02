class AlbumsController < ApplicationController
  respond_to :html, :xml, :json, :js

  def index
  	@albums = Album.all
    
  end

  before_action :up_page, only: :show

  def show
  	@album = Album.find(params[:id])
  	@pictures = @album.pictures
    @meta_title = @album.meta_title
    @meta_description = @album.meta_description
    @keywords = @album.keywords
  end

  private

  def album_params
  	params.require(:album).permit(:name, :description, :image)
  end

  def up_page 
   session[:page] = case 
                   when params[:new_req] then session[:page]+1
                   when params[:page] then params[:page]
                   else 1
  
  end
end
end
