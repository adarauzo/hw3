class PlacesController < ApplicationController

  def index
    @places = name.all
  end
  
end
