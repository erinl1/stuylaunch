json.extract! event, :id, :name, :startTime, :endTime, :address, :description, :created_at, :updated_at
json.url event_url(event, format: :json)
