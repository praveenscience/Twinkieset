# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create!(email: "karen@example.com", password: "password", business_name: "Karen Ling", website: "http://karenling.net")
Album.create!(title: "First Album Title", event_date: "2015-06-09 16:40:27 -0700", cover_image_id: 1, user_id: 1)
Album.create!(title: "Second Album Title", event_date: "2015-03-09 16:40:27 -0700", cover_image_id: 7, user_id: 1)
Album.create!(title: "Third Album Title", event_date: "2015-03-09 16:40:27 -0700", cover_image_id: 5, user_id: 1)
Album.create!(title: "Fourth Album Title", event_date: "2015-03-09 16:40:27 -0700", cover_image_id: 3, user_id: 1)
Album.create!(title: "Fifth Album Title", event_date: "2015-03-09 16:40:27 -0700", user_id: 1)
Subalbum.create!(title: "Subalbum title 1 ", album_id: 1)
Subalbum.create!(title: "Subalbum title 2", album_id: 1)
Photo.create!(image_url: "http://images.karenling.net/2014/12/julie-jose/julie-jose-019.jpg", subalbum_id: 1)
Photo.create!(image_url: "http://images.twinkieandkaren.com/2015/04/twinkie-birthday-lake-tahoe-0001.jpg", subalbum_id: 1)
Photo.create!(image_url: "http://images.karenling.net/2014/12/julie-jose/julie-jose-013.jpg", subalbum_id: 1)
Photo.create!(image_url: "http://images.karenling.net/2014/12/julie-jose/julie-jose-009.jpg", subalbum_id: 6)
Photo.create!(image_url: "http://images.karenling.net/2014/11/rosie-philip-001.jpg", subalbum_id: 6)
Photo.create!(image_url: "http://images.karenling.net/2014/06/diane_angel_gomez_nadine_jose_017.jpg", subalbum_id: 6)
Photo.create!(image_url: "http://images.karenling.net/2014/06/diane_angel_gomez_nadine_jose_001.jpg", subalbum_id: 6)
