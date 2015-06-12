
json.extract! @owner, :email, :username, :business_name, :website
json.categories @categories.each do |category|
  json.title category
  json.albums @albums.each do |album|
    if album.category === category
      json.extract!(album, :id, :title, :event_date, :status, :category, :created_at, :updated_at)

      time = Time.parse(album.event_date.to_s)
      json.string_date time.strftime("%B #{time.day.ordinalize}, %Y")


      if album.cover_image
        json.cover_image_url album.cover_image.image_url
      else
        json.cover_image_url nil
      end
    end
  end

end
