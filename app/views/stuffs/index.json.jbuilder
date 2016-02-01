json.array!(@stuffs) do |stuff|
  json.extract! stuff, :id, :image, :title, :content, :price, :status
  json.url stuff_url(stuff, format: :json)
end
