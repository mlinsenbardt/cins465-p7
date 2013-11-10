json.array!(@photos) do |photo|
  json.extract! photo, :title, :filename
  json.url photo_url(photo, format: :json)
end
