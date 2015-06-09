json.extract!(@album, :id, :title, :event_date, :cover_image_id, :status, :category, :created_at, :updated_at)

json.subalbums do
  json.array!(@album.subalbums) do |subalbum|
    json.extract!(subalbum, :id, :title, :order, :created_at, :updated_at)

    json.photos do
      json.array!(@album.photos) do |photo|
        json.extract!(photo, :id, :image_url, :order, :created_at, :updated_at)
      end
    end
  end
end
