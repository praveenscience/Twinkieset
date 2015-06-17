
json.array!(@albums) do |album|
  json.extract!(album, :id, :title, :event_date, :status, :created_at, :updated_at)


#user id also

  time = Time.parse(album.event_date.to_s)
  json.string_date time.strftime("%B #{time.day.ordinalize}, %Y")

  if album.cover_image
    json.cover_image_url album.cover_image.image_url
    json.cover_image_med album.cover_image.medium_url
  else
    json.cover_image_url nil
    json.cover_image_med nil
  end
end
