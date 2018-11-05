class TravelEventsController < ApplicationController
	before_action :set_travel_event, only: [:show, :edit, :update, :destroy]
	before_action :authenticate_admin!

	# GET /travel_events
	# GET /travel_events.json
	def index
		@upcoming_travel_events = TravelEvent.where('travel_events.start > ?', DateTime.now.to_s(:db))
		@user = User.all.where(admin_id: current_admin.id).first()
		@filterrific = initialize_filterrific(
			TravelEvent.where('travel_events.start > ?', DateTime.now.to_s(:db)),
			params[:filterrific],
		) or return

		@travel_events = @filterrific.find.page(params[:page])

		@upcoming_travel_events_with_image = @upcoming_travel_events.where.not(image: [nil, ''])

		respond_to do |format|
			format.html
			format.js
		end
	end

	def past_events
		@filterrific = initialize_filterrific(
			TravelEvent.where('travel_events.start <= ?', DateTime.now.to_s(:db)),
			params[:filterrific],
		) or return

		@travel_events = @filterrific.find.page(params[:page])

		respond_to do |format|
			format.html
			format.js
		end
	end

	# GET /travel_events/1
	# GET /travel_events/1.json
	def show
		@travel_event = TravelEvent.find(params[:id])
		@reviews = Review.where(travel_event_id: @travel_event.id).paginate(:page => params[:reviews_page], :per_page => 4).order('created_at DESC')
		@posts = Post.where(travel_event_id: @travel_event.id).paginate(:page => params[:posts_page], :per_page => 4).order('created_at DESC')

		@reviews_paginated = @reviews.paginate(:page => params[:reviews_page], :per_page => 4).order('created_at DESC')
		@posts_paginated = @posts.paginate(:page => params[:posts_page], :per_page => 4).order('created_at DESC')

		@users = User.all
		@has_review = @reviews.where(user_id: current_admin.user.id).count > 0
		@average_rating = @reviews.average(:rating)

		@post = Post.new(travel_event_id: @travel_event.id,
						 user_id: current_admin.user.id)

		@five_star_count = @reviews.where('rating >= 4.5').count
		@four_star_count = @reviews.where('rating < 4.5 and rating >= 3.5').count
		@three_star_count = @reviews.where('rating < 3.5 and rating >= 2.5').count
		@two_star_count = @reviews.where('rating < 2.5 and rating >= 1.5').count
		@one_star_count = @reviews.where('rating < 1.5').count
	end

	# GET /travel_events/new
	def new
		@travel_event = TravelEvent.new
	end

	# GET /travel_events/1/edit
	def edit
	end

	def invitations
		@invitations = Invitation.all.where(user_id: current_admin.user.id)
	end

	def join

	end

	def join_event
		@travel_event_id = params[:id]
		@travel_event = TravelEvent.find(@travel_event_id)
		@user = User.all.where(admin_id: current_admin.id).first()

		@invitation = Invitation.where(user_id: current_admin.user.id, travel_event_id: @travel_event_id).take

		if @travel_event.attendees.where(user_id: @user.id).count > 0
			redirect_to travel_event_url(@travel_event), notice: 'You already had joined the event!' and return
		end
		if @travel_event.attendees.count < @travel_event.max_attendance
			@attendee = Attendee.create(paid: true, user_id: @user.id, travel_event_id: @travel_event_id)
			if @attendee.id
				if not @invitation.nil?
					@invitation.destroy
				end
				redirect_to travel_event_url(@travel_event), notice: 'You joined the event successfully.'

			else
				redirect_to travel_event_url(@travel_event), notice: 'Error in joining event'
			end
		else
			redirect_to travel_event_url(@travel_event), notice: 'Event already has max attendee!'
		end

	end


	def create_invitations
		@user_ids = params[:user_ids]
		@des = params[:description]
		@from = User.all.where(admin_id: current_admin.id).first().id
		error = false
		@user_ids.each do |id|
			@invitation = Invitation.create(description: @des, from: @from, user_id: id, travel_event_id: params[:id])
			if !@invitation.id
				error = true
			end
		end
		if !error
			redirect_to home_url
		else

		end
	end

	def new_invitations
		@event = TravelEvent.find(params[:id])

		@invitations = []
		User.all.each do |user|
			@invitation = Invitation.new
			@invitation.travel_event_id = params[:id]
			@invitation.user_id = user.id
			@invitations << @invitation
		end
	end

	# POST /travel_events
	# POST /travel_events.json
	def create
		@travel_event = TravelEvent.new(travel_event_params)

		respond_to do |format|
			if @travel_event.save
				format.html {redirect_to @travel_event, notice: 'Travel event was successfully created.'}
				format.json {render :show, status: :created, location: @travel_event}
			else
				format.html {render :new}
				format.json {render json: @travel_event.errors, status: :unprocessable_entity}
			end
		end
	end

	# PATCH/PUT /travel_events/1
	# PATCH/PUT /travel_events/1.json
	def update
		respond_to do |format|
			if @travel_event.update(travel_event_params)
				format.html {redirect_to @travel_event, notice: 'Travel event was successfully updated.'}
				format.json {render :show, status: :ok, location: @travel_event}
			else
				format.html {render :edit}
				format.json {render json: @travel_event.errors, status: :unprocessable_entity}
			end
		end
	end

	# DELETE /travel_events/1
	# DELETE /travel_events/1.json
	def destroy
		@travel_event.destroy
		respond_to do |format|
			format.html {redirect_to travel_events_url, notice: 'Travel event was successfully destroyed.'}
			format.json {head :no_content}
		end
	end

	private
	# Use callbacks to share common setup or constraints between actions.
	def set_travel_event
		@travel_event = TravelEvent.find(params[:id])
	end

	# Never trust parameters from the scary internet, only allow the white list through.
	def travel_event_params
		params.require(:travel_event).permit(:name, :description, :max_attendance, :price, :start, :duration, :travel_destination_id, :image, :user_id)
	end
end
