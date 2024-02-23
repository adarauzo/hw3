class PlacesController < ApplicationController

  def index
    @place = Place.find(params[:id])
  end
  
end
