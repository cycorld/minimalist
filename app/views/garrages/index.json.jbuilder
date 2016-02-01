json.array!(@garrages) do |garrage|
  json.extract! garrage, :id, :address, :latitude, :longitude
  json.url garrage_url(garrage, format: :json)
end
