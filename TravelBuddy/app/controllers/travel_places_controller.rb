class TravelPlacesController < ApplicationController
  before_action :set_travel_place, only: [:show, :edit, :update, :destroy]

  # GET /travel_places
  # GET /travel_places.json
  def index
    @travel_places = TravelPlace.all
    @travel_event = TravelEvent.find(params[:travel_event_id])
  end

  # GET /travel_places/1
  # GET /travel_places/1.json
  def show
  end

  # GET /travel_places/new
  def new
    @travel_place = TravelPlace.new
    @travel_event = TravelEvent.find(params[:travel_event_id])
  end

  # GET /travel_places/1/edit
  def edit
  end

  # POST /travel_places
  # POST /travel_places.json
  def create
    @travel_place = TravelPlace.new(travel_place_params)

    respond_to do |format|
      if @travel_place.save
        format.html { redirect_to edit_travel_event_url(id: travel_place_params[:travel_event_id]), notice: 'Travel place was successfully created.' }
        format.json { render :show, status: :created, location: @travel_place }
      else
        format.html { render :new }
        format.json { render json: @travel_place.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /travel_places/1
  # PATCH/PUT /travel_places/1.json
  def update
    respond_to do |format|
      if @travel_place.update(travel_place_params)
        format.html { redirect_to travel_event_travel_place_url, notice: 'Travel place was successfully updated.' }
        format.json { render :show, status: :ok, location: @travel_place }
      else
        format.html { render :edit }
        format.json { render json: @travel_place.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /travel_places/1
  # DELETE /travel_places/1.json
  def destroy
    @travel_place.destroy
    respond_to do |format|
      format.html { redirect_to travel_event_travel_places_url, notice: 'Travel place was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_travel_place
      @travel_place = TravelPlace.find(params[:id])
      @travel_event = TravelEvent.find(params[:travel_event_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def travel_place_params
      params.require(:travel_place).permit(:address, :startTime, :endTime, :description, :travel_event_id)
    end
end
