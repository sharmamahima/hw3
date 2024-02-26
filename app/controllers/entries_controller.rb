class EntriesController < ApplicationController
  def new
    @place = Place.find(params[:place_id])
    @entry = @place.entries.build
  end

  def create
    @place = Place.find(params[:place_id])
    @place.entries.create(params[:entry].permit!)
    redirect_to place_path(@place)
  end
end
