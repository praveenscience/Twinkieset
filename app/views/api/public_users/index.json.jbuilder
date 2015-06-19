json.array! @users do |user|
  json.extract!(user, :id, :business_name, :website)
  json.cover_image user.albums.first.cover_image.medium_url
end
