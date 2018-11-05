class TravelDestinationsController < ApplicationController
  before_action :set_travel_destination, only: [:show, :edit, :update, :destroy]

  # GET /travel_destinations
  # GET /travel_destinations.json
  def index
    @travel_destinations = TravelDestination.all
  end

  # GET /travel_destinations/1
  # GET /travel_destinations/1.json
  def show
    @pictures = Picture.all.where(travel_destination_id:@travel_destination.id)
  end

  # GET /travel_destinations/new
  def new
    @travel_destination = TravelDestination.new
    @picture = Picture.new
  end

  # GET /travel_destinations/1/edit
  def edit
  end

  # POST /travel_destinations
  # POST /travel_destinations.json
  def create
    @address = params[:travel_destination][:address]
    @city = params[:travel_destination][:city]
    @state = params[:travel_destination][:state]
    @travel_destination = TravelDestination.create(address:@address,city:@city,state:@state)
    

    respond_to do |format|
      if @travel_destination.id > 0
        format.html { redirect_to @travel_destination, notice: 'Travel destination was successfully created.' }
        format.json { render :show, status: :created, location: @travel_destination }
      else
        format.html { render :new }
        format.json { render json: @travel_destination.errors, status: :unprocessable_entity }
      end
    end
    if not params[:travel_destination][:image].to_s.empty?
      @picture = Picture.create(title:@address,image:params[:travel_destination][:image],travel_destination_id:@travel_destination.id)
      if @picture.id > 0

      end
    end
  end

  # PATCH/PUT /travel_destinations/1
  # PATCH/PUT /travel_destinations/1.json
  def update
    @address = params[:travel_destination][:address]
    @city = params[:travel_destination][:city]
    @state = params[:travel_destination][:state]
    respond_to do |format|
      if @travel_destination.update(address:@address,city:@city,state:@state)
        format.html { redirect_to @travel_destination, notice: 'Travel destination was successfully updated.' }
        format.json { render :show, status: :ok, location: @travel_destination }
      else
        format.html { render :edit }
        format.json { render json: @travel_destination.errors, status: :unprocessable_entity }
      end
    end
    @image = params[:travel_destination][:image]
    if not @image.nil? 
      Picture.create(title:@address,image:params[:travel_destination][:image],travel_destination_id:@travel_destination.id)
    end
  end

  # DELETE /travel_destinations/1
  # DELETE /travel_destinations/1.json
  def destroy
    @travel_destination.destroy
    respond_to do |format|
      format.html { redirect_to travel_destinations_url, notice: 'Travel destination was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_travel_destination
      @travel_destination = TravelDestination.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def travel_destination_params
      params.require(:travel_destination).permit(:address, :city, :state)
    end

end
