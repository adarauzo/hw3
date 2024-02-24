class EntriesController < ApplicationController
  before_action :set_place

  def index
    @entries = @place.entries
  end

  def show
    @entry = @place.entries.find(params[:id])
  end

  def new
    @place = Place.find(params[:place_id])
    @entry = @place.entries.new
  end
  

  def create
    @entry = @place.entries.new(entry_params)

    if @entry.save
      redirect_to place_path(@place), notice: 'Entry was successfully created.' 
    else
      render :new
    end
  end

  private

  def set_place
    @place = Place.find(params[:place_id])
  end

  def entry_params
    params.require(:entry).permit(:title, :description, :date)
  end
end
