
json.array!(@albums) do |album|
  json.extract!(album, :id, :title, :event_date, :status, :category, :created_at, :updated_at)
  if album.cover_image
    json.cover_image_url album.cover_image.image_url
  else
    json.cover_image_url nil
  end
end
