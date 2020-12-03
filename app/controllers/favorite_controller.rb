class FavoriteController < ApplicationController
    before_action :authenticate_user!
  
    def update
  
      favorite = Favorite.where(petprofile: Petprofile.find(params[:petprofile]), user: current_user)
      if favorite == []
  #create the favo
  Favorite.create(petprofile: Petprofile.find(params[:petprofile]), user:current_user)
  @favorite_exists = true
      else
  #delete the fav
  favorite.destroy_all
  @favorite_exists = false
      end
  
      respond_to do |format|
        format.html {  }
        format.js {}
  
      end
    end
end
  
