class ReviewsController < ApplicationController
  before_action :set_review, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_admin!

  # GET /reviews
  # GET /reviews.json
  def index
    @reviews = Review.all
    @reviews_paginated = @reviews.paginate(:page => params[:page], :per_page => 4)
  end

  # GET /reviews/1
  # GET /reviews/1.json
  def show
    @reviewer = User.find(@review.user_id)
  end

  # GET /reviews/new
  def new
    @review = Review.new(travel_event_id: params[:travel_event_id], 
                         user_id:current_admin.user.id)
  end

  # GET /reviews/1/edit
  def edit
    @review = Review.find(params[:id])
    @reviewer = User.find(@review.user_id)
  end

  # POST /reviews
  # POST /reviews.json
  def create
    @travel_event_id = review_params[:travel_event_id]
    @review = Review.new(review_params)
    
    if @review.save
      redirect_to travel_event_url(@travel_event_id), notice: 'Review added to event successfully.'
    else
      # flash.now[:alert] = 'Review add failed.'
      format.html { render :new, alert: 'Review add failed.'}
      format.json { render json: @review.errors, status: :unprocessable_entity }
    end

  end

  # PATCH/PUT /reviews/1
  # PATCH/PUT /reviews/1.json
  def update
    respond_to do |format|
      if @review.update(review_params)
        format.html { redirect_to travel_event_url(review_params[:travel_event_id]), notice: 'Review was successfully updated.' }
        format.json { render :show, status: :ok, location: @review }
      else
        flash.now[:alert] = 'Review update failed.'
        format.html { render :edit }
        format.json { render json: @review.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reviews/1
  # DELETE /reviews/1.json
  def destroy
    @travel_event_id = @review.travel_event_id
    @review.destroy
    respond_to do |format|
      format.html { redirect_to travel_event_url(@travel_event_id), notice: 'Review was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_review
      @review = Review.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def review_params
      # params.fetch(:review, {})
      params.require(:review).permit(:rating, :description, :travel_event_id, :user_id)
    end
end
