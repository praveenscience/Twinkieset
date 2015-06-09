# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create!(email: "karen@example.com", password: "password", business_name: "Karen Ling", website: "http://karenling.net")
Album.create!(title: "First Album Title", event_date: "2015-06-09 16:40:27 -0700", user_id: 1)
Subalbum.create!(title: "Subalbum title", album_id: 1)
Photo.create!(image_url: "http://images.twinkieandkaren.com/2015/04/twinkie-birthday-lake-tahoe-0029.jpg", subalbum_id: 1)
Photo.create!(image_url: "http://images.twinkieandkaren.com/2015/04/twinkie-birthday-lake-tahoe-0001.jpg", subalbum_id: 1)
Photo.create!(image_url: "http://images.twinkieandkaren.com/2015/04/twinkie-birthday-lake-tahoe-0003.jpg", subalbum_id: 1)
Photo.create!(image_url: "http://images.twinkieandkaren.com/2015/04/twinkie-birthday-lake-tahoe-0005.jpg", subalbum_id: 1)
Photo.create!(image_url: "http://images.twinkieandkaren.com/2015/04/twinkie-birthday-lake-tahoe-0020.jpg", subalbum_id: 1)
Photo.create!(image_url: "http://images.twinkieandkaren.com/2015/04/twinkie-birthday-lake-tahoe-0024.jpg", subalbum_id: 1)
Photo.create!(image_url: "http://images.twinkieandkaren.com/2015/04/twinkie-birthday-lake-tahoe-0021.jpg", subalbum_id: 1)
