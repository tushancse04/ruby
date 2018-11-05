json.extract! travel_place, :id, :address, :startTime, :endTime, :description, :travel_event_id, :created_at, :updated_at
json.url travel_place_url(travel_place, format: :json)
