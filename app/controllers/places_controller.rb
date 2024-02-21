class PlacesController < ApplicationController
  # GET /places
  def index
    @places = Place.all
  end

  # GET /places/:id
  def show
    @place = Place.find(params[:id])
    @entries = @place.entries
  end

  # GET /places/new
  def new
    @place = Place.new
  end

  # POST /places
  def create
    @place = Place.new(params[:place])
    if @place.save
      redirect_to @place, notice: 'Place created.'
    else
      render :new
    end
  end
end