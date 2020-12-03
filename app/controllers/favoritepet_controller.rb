class FavoritepetController < ApplicationController
  
  def update
  
    favoritepet = Favoritepet.where(petprofile: Petprofile.find(params[:petprofile]), user: current_user)
    if favoritepet == []
#create the favo
Favoritepet.create(petprofile: Petprofile.find(params[:petprofile]), user:current_user)
@favoritepet_exists = true
    else
#delete the fav
favoritepet.destroy_all
@favoritepet_exists = false
    end

    respond_to do |format|
      format.html {  }
      format.js {}

    end
  end
end
