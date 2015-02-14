json.array!(@artworks) do |artwork|
  json.extract! artwork, :id, :artist_id, :title, :media, :price
  json.url artwork_url(artwork, format: :json)
end
