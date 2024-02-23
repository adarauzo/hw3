class PlacesController < ApplicationController

  def index
    @places = places.find_by({ "id" => params["id"] })
  end

end
