json.array!(@locations) do |location|
  json.extract! location, :id, :department, :building, :floor, :room
  json.url location_url(location, format: :json)
end
