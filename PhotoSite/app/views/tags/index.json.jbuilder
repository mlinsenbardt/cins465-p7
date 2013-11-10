json.array!(@tags) do |tag|
  json.extract! tag, :photo, :key, :value, :photo_id
  json.url tag_url(tag, format: :json)
end
