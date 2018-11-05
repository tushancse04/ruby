json.extract! travel_destination, :id, :address, :city, :state, :created_at, :updated_at
json.url travel_destination_url(travel_destination, format: :json)
