class StatPagesController < ApplicationController

  def home
    @albums = Album.all
    @meta_title        = "Мастерская сладостей Яны Мартыновой"
    @meta_description  = "Мастерская сладостей Яны Мартыновой"
    @keywords          = ""
  end

  def signup
    redirect_to '/404'
  end
end
