json.extract! destination, :id, :pseudo, :date, :latitude, :longitude, :message, :created_at, :updated_at
json.url destination_url(destination, format: :json)
