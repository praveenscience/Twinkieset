json.extract!(@album, :id, :title, :event_date, :status, :created_at, :updated_at)

time = Time.parse(@album.event_date.to_s)

json.string_date time.strftime("%B #{time.day.ordinalize}, %Y")

if @album.cover_image
  json.cover_image_url @album.cover_image.image_url
  json.cover_image_med @album.cover_image.medium_url
else
  json.cover_image_url nil
  json.cover_image_med nil
end

json.first_subalbum_id @album.subalbum_ids.first
json.subalbums do
  json.array!(@album.subalbums) do |subalbum|
    json.partial!('api/subalbums/subalbum', {subalbum: subalbum})
  #   json.extract!(subalbum, :id, :title, :order, :created_at, :updated_at)
  #
  #   json.photos do
  #     json.array!(subalbum.photos) do |photo|
  #       json.extract!(photo, :id, :image_url, :order, :created_at, :updated_at)
  #     end
  #   end
  end
end
