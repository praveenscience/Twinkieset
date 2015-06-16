json.extract!(subalbum, :id, :title, :order, :created_at, :updated_at)

json.photos do
  json.array!(subalbum.photos) do |photo|
    json.extract!(photo, :id, :image_url, :order, :file_name, :created_at, :updated_at, :date_taken, :medium_url, :thumb_url)
  end
end



#
# json.extract!(subalbum, :id, :title, :order, :created_at, :updated_at)
#
# json.photos do
#   json.array!(subalbum.photos) do |photo|
#     json.extract!(photo, :id, :image_url, :order, :file_name, :medium_url, :thumb_url)
#
#
#     converted_date_created = photo.created_at.to_s.split("T").join(" ").split('-').join(" ").split(':').join(" ").split(".").join(" ")
#     converted_date_taken = photo.date_taken.to_s.split("T").join(" ").split('-').join(" ").split(':').join(" ").split(".").join(" ")
#
#     json.created_at converted_date_created
#     json.date_taken converted_date_taken
#   end
# end
