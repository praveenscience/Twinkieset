json.extract!(@album, :id, :title, :event_date, :status, :category, :created_at, :updated_at)


if @album.cover_image
  json.cover_image_url @album.cover_image.image_url
else
  json.cover_image_url nil
end

json.subalbums do
  json.array!(@album.subalbums) do |subalbum|
    json.extract!(subalbum, :id, :title, :order, :created_at, :updated_at)

    json.photos do
      json.array!(subalbum.photos) do |photo|
        json.extract!(photo, :id, :image_url, :order, :created_at, :updated_at)
      end
    end
  end
end
