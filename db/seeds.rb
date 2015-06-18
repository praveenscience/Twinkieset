# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create!(email: "erich@erichmcvey.com", password: "password", business_name: "Erich McVey", website: "http://www.erichmcvey.com/")
        Album.create!(title: "Kaela and Jonathan", event_date: "2015-05-03 00:00:00 -0800", cover_image_id: 1, user_id: 1, status: 'Published', password: '4444')

        # Auto Highlights Subalbum #1
        Subalbum.create!(title: "Preparation ", album_id: 1) #2
        Subalbum.create!(title: "Ceremony", album_id: 1) #3
        Subalbum.create!(title: "Portraits", album_id: 1) #4

                Photo.create!(
                  subalbum_id: 1, date_taken: Time.now,
                  file_name: 'Elopement-Photography-on-film-by-Erich-Mcvey-17.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Kaela%20and%20Jonathan%20-%20Hood%20River%20Oregon/00%20Highlights/Elopement-Photography-on-film-by-Erich-Mcvey-17.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Kaela%20and%20Jonathan%20-%20Hood%20River%20Oregon/00%20Highlights/Elopement-Photography-on-film-by-Erich-Mcvey-17.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Kaela%20and%20Jonathan%20-%20Hood%20River%20Oregon/00%20Highlights/Elopement-Photography-on-film-by-Erich-Mcvey-17.jpg')
                Photo.create!(
                  subalbum_id: 1, date_taken: Time.now,
                  file_name: 'Elopement-Photography-on-film-by-Erich-Mcvey-20.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Kaela%20and%20Jonathan%20-%20Hood%20River%20Oregon/00%20Highlights/Elopement-Photography-on-film-by-Erich-Mcvey-20.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Kaela%20and%20Jonathan%20-%20Hood%20River%20Oregon/00%20Highlights/Elopement-Photography-on-film-by-Erich-Mcvey-20.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Kaela%20and%20Jonathan%20-%20Hood%20River%20Oregon/00%20Highlights/Elopement-Photography-on-film-by-Erich-Mcvey-20.jpg')
                Photo.create!(
                  subalbum_id: 1, date_taken: Time.now,
                  file_name: 'Elopement-Photography-on-film-by-Erich-Mcvey-21.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Kaela%20and%20Jonathan%20-%20Hood%20River%20Oregon/00%20Highlights/Elopement-Photography-on-film-by-Erich-Mcvey-21.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Kaela%20and%20Jonathan%20-%20Hood%20River%20Oregon/00%20Highlights/Elopement-Photography-on-film-by-Erich-Mcvey-21.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Kaela%20and%20Jonathan%20-%20Hood%20River%20Oregon/00%20Highlights/Elopement-Photography-on-film-by-Erich-Mcvey-21.jpg')
                Photo.create!(
                  subalbum_id: 1, date_taken: Time.now,
                  file_name: 'Elopement-Photography-on-film-by-Erich-Mcvey-22.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Kaela%20and%20Jonathan%20-%20Hood%20River%20Oregon/00%20Highlights/Elopement-Photography-on-film-by-Erich-Mcvey-22.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Kaela%20and%20Jonathan%20-%20Hood%20River%20Oregon/00%20Highlights/Elopement-Photography-on-film-by-Erich-Mcvey-22.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Kaela%20and%20Jonathan%20-%20Hood%20River%20Oregon/00%20Highlights/Elopement-Photography-on-film-by-Erich-Mcvey-22.jpg')
                Photo.create!(
                  subalbum_id: 1, date_taken: Time.now,
                  file_name: 'Elopement-Photography-on-film-by-Erich-Mcvey-24.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Kaela%20and%20Jonathan%20-%20Hood%20River%20Oregon/00%20Highlights/Elopement-Photography-on-film-by-Erich-Mcvey-24.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Kaela%20and%20Jonathan%20-%20Hood%20River%20Oregon/00%20Highlights/Elopement-Photography-on-film-by-Erich-Mcvey-24.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Kaela%20and%20Jonathan%20-%20Hood%20River%20Oregon/00%20Highlights/Elopement-Photography-on-film-by-Erich-Mcvey-24.jpg')
                Photo.create!(
                  subalbum_id: 1, date_taken: Time.now,
                  file_name: 'Elopement-Photography-on-film-by-Erich-Mcvey-25.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Kaela%20and%20Jonathan%20-%20Hood%20River%20Oregon/00%20Highlights/Elopement-Photography-on-film-by-Erich-Mcvey-25.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Kaela%20and%20Jonathan%20-%20Hood%20River%20Oregon/00%20Highlights/Elopement-Photography-on-film-by-Erich-Mcvey-25.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Kaela%20and%20Jonathan%20-%20Hood%20River%20Oregon/00%20Highlights/Elopement-Photography-on-film-by-Erich-Mcvey-25.jpg')
                Photo.create!(
                  subalbum_id: 1, date_taken: Time.now,
                  file_name: 'Elopement-Photography-on-film-by-Erich-Mcvey-30.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Kaela%20and%20Jonathan%20-%20Hood%20River%20Oregon/00%20Highlights/Elopement-Photography-on-film-by-Erich-Mcvey-30.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Kaela%20and%20Jonathan%20-%20Hood%20River%20Oregon/00%20Highlights/Elopement-Photography-on-film-by-Erich-Mcvey-30.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Kaela%20and%20Jonathan%20-%20Hood%20River%20Oregon/00%20Highlights/Elopement-Photography-on-film-by-Erich-Mcvey-30.jpg')
                Photo.create!(
                  subalbum_id: 1, date_taken: Time.now,
                  file_name: 'Elopement-Photography-on-film-by-Erich-Mcvey-33.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Kaela%20and%20Jonathan%20-%20Hood%20River%20Oregon/00%20Highlights/Elopement-Photography-on-film-by-Erich-Mcvey-33.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Kaela%20and%20Jonathan%20-%20Hood%20River%20Oregon/00%20Highlights/Elopement-Photography-on-film-by-Erich-Mcvey-33.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Kaela%20and%20Jonathan%20-%20Hood%20River%20Oregon/00%20Highlights/Elopement-Photography-on-film-by-Erich-Mcvey-33.jpg')
                Photo.create!(
                  subalbum_id: 1, date_taken: Time.now,
                  file_name: 'Elopement-Photography-on-film-by-Erich-Mcvey-36.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Kaela%20and%20Jonathan%20-%20Hood%20River%20Oregon/00%20Highlights/Elopement-Photography-on-film-by-Erich-Mcvey-36.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Kaela%20and%20Jonathan%20-%20Hood%20River%20Oregon/00%20Highlights/Elopement-Photography-on-film-by-Erich-Mcvey-36.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Kaela%20and%20Jonathan%20-%20Hood%20River%20Oregon/00%20Highlights/Elopement-Photography-on-film-by-Erich-Mcvey-36.jpg')
                Photo.create!(
                  subalbum_id: 1, date_taken: Time.now,
                  file_name: 'Elopement-Photography-on-film-by-Erich-Mcvey-7.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Kaela%20and%20Jonathan%20-%20Hood%20River%20Oregon/00%20Highlights/Elopement-Photography-on-film-by-Erich-Mcvey-7.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Kaela%20and%20Jonathan%20-%20Hood%20River%20Oregon/00%20Highlights/Elopement-Photography-on-film-by-Erich-Mcvey-7.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Kaela%20and%20Jonathan%20-%20Hood%20River%20Oregon/00%20Highlights/Elopement-Photography-on-film-by-Erich-Mcvey-7.jpg')
                Photo.create!(
                  subalbum_id: 1, date_taken: Time.now,
                  file_name: 'Elopement-Photography-on-film-by-Erich-Mcvey-8.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Kaela%20and%20Jonathan%20-%20Hood%20River%20Oregon/00%20Highlights/Elopement-Photography-on-film-by-Erich-Mcvey-8.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Kaela%20and%20Jonathan%20-%20Hood%20River%20Oregon/00%20Highlights/Elopement-Photography-on-film-by-Erich-Mcvey-8.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Kaela%20and%20Jonathan%20-%20Hood%20River%20Oregon/00%20Highlights/Elopement-Photography-on-film-by-Erich-Mcvey-8.jpg')


                Photo.create!(
                  file_name: 'Elopement-Photography-on-film-by-Erich-Mcvey-1.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Kaela%20and%20Jonathan%20-%20Hood%20River%20Oregon/01%20Preparation/Elopement-Photography-on-film-by-Erich-Mcvey-1.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Kaela%20and%20Jonathan%20-%20Hood%20River%20Oregon/01%20Preparation/Elopement-Photography-on-film-by-Erich-Mcvey-1.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Kaela%20and%20Jonathan%20-%20Hood%20River%20Oregon/01%20Preparation/Elopement-Photography-on-film-by-Erich-Mcvey-1.jpg',
                  subalbum_id: 2, date_taken: Time.now)
                Photo.create!(
                  file_name: 'Elopement-Photography-on-film-by-Erich-Mcvey-10.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Kaela%20and%20Jonathan%20-%20Hood%20River%20Oregon/01%20Preparation/Elopement-Photography-on-film-by-Erich-Mcvey-10.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Kaela%20and%20Jonathan%20-%20Hood%20River%20Oregon/01%20Preparation/Elopement-Photography-on-film-by-Erich-Mcvey-10.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Kaela%20and%20Jonathan%20-%20Hood%20River%20Oregon/01%20Preparation/Elopement-Photography-on-film-by-Erich-Mcvey-10.jpg',
                  subalbum_id: 2, date_taken: Time.now)
                Photo.create!(
                  file_name: 'Elopement-Photography-on-film-by-Erich-Mcvey-11.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Kaela%20and%20Jonathan%20-%20Hood%20River%20Oregon/01%20Preparation/Elopement-Photography-on-film-by-Erich-Mcvey-11.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Kaela%20and%20Jonathan%20-%20Hood%20River%20Oregon/01%20Preparation/Elopement-Photography-on-film-by-Erich-Mcvey-11.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Kaela%20and%20Jonathan%20-%20Hood%20River%20Oregon/01%20Preparation/Elopement-Photography-on-film-by-Erich-Mcvey-11.jpg',
                  subalbum_id: 2, date_taken: Time.now)
                Photo.create!(
                  file_name: 'Elopement-Photography-on-film-by-Erich-Mcvey-13.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Kaela%20and%20Jonathan%20-%20Hood%20River%20Oregon/01%20Preparation/Elopement-Photography-on-film-by-Erich-Mcvey-13.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Kaela%20and%20Jonathan%20-%20Hood%20River%20Oregon/01%20Preparation/Elopement-Photography-on-film-by-Erich-Mcvey-13.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Kaela%20and%20Jonathan%20-%20Hood%20River%20Oregon/01%20Preparation/Elopement-Photography-on-film-by-Erich-Mcvey-13.jpg',
                  subalbum_id: 2, date_taken: Time.now)
                Photo.create!(
                  file_name: 'Elopement-Photography-on-film-by-Erich-Mcvey-14.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Kaela%20and%20Jonathan%20-%20Hood%20River%20Oregon/01%20Preparation/Elopement-Photography-on-film-by-Erich-Mcvey-14.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Kaela%20and%20Jonathan%20-%20Hood%20River%20Oregon/01%20Preparation/Elopement-Photography-on-film-by-Erich-Mcvey-14.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Kaela%20and%20Jonathan%20-%20Hood%20River%20Oregon/01%20Preparation/Elopement-Photography-on-film-by-Erich-Mcvey-14.jpg',
                  subalbum_id: 2, date_taken: Time.now)
                Photo.create!(
                  file_name: 'Elopement-Photography-on-film-by-Erich-Mcvey-15.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Kaela%20and%20Jonathan%20-%20Hood%20River%20Oregon/01%20Preparation/Elopement-Photography-on-film-by-Erich-Mcvey-15.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Kaela%20and%20Jonathan%20-%20Hood%20River%20Oregon/01%20Preparation/Elopement-Photography-on-film-by-Erich-Mcvey-15.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Kaela%20and%20Jonathan%20-%20Hood%20River%20Oregon/01%20Preparation/Elopement-Photography-on-film-by-Erich-Mcvey-15.jpg',
                  subalbum_id: 2, date_taken: Time.now)
                Photo.create!(
                  file_name: 'Elopement-Photography-on-film-by-Erich-Mcvey-16.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Kaela%20and%20Jonathan%20-%20Hood%20River%20Oregon/01%20Preparation/Elopement-Photography-on-film-by-Erich-Mcvey-16.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Kaela%20and%20Jonathan%20-%20Hood%20River%20Oregon/01%20Preparation/Elopement-Photography-on-film-by-Erich-Mcvey-16.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Kaela%20and%20Jonathan%20-%20Hood%20River%20Oregon/01%20Preparation/Elopement-Photography-on-film-by-Erich-Mcvey-16.jpg',
                  subalbum_id: 2, date_taken: Time.now)
                Photo.create!(
                  file_name: 'Elopement-Photography-on-film-by-Erich-Mcvey-17.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Kaela%20and%20Jonathan%20-%20Hood%20River%20Oregon/01%20Preparation/Elopement-Photography-on-film-by-Erich-Mcvey-17.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Kaela%20and%20Jonathan%20-%20Hood%20River%20Oregon/01%20Preparation/Elopement-Photography-on-film-by-Erich-Mcvey-17.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Kaela%20and%20Jonathan%20-%20Hood%20River%20Oregon/01%20Preparation/Elopement-Photography-on-film-by-Erich-Mcvey-17.jpg',
                  subalbum_id: 2, date_taken: Time.now)
                Photo.create!(
                  file_name: 'Elopement-Photography-on-film-by-Erich-Mcvey-18.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Kaela%20and%20Jonathan%20-%20Hood%20River%20Oregon/01%20Preparation/Elopement-Photography-on-film-by-Erich-Mcvey-18.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Kaela%20and%20Jonathan%20-%20Hood%20River%20Oregon/01%20Preparation/Elopement-Photography-on-film-by-Erich-Mcvey-18.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Kaela%20and%20Jonathan%20-%20Hood%20River%20Oregon/01%20Preparation/Elopement-Photography-on-film-by-Erich-Mcvey-18.jpg',
                  subalbum_id: 2, date_taken: Time.now)
                Photo.create!(
                  file_name: 'Elopement-Photography-on-film-by-Erich-Mcvey-19.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Kaela%20and%20Jonathan%20-%20Hood%20River%20Oregon/01%20Preparation/Elopement-Photography-on-film-by-Erich-Mcvey-19.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Kaela%20and%20Jonathan%20-%20Hood%20River%20Oregon/01%20Preparation/Elopement-Photography-on-film-by-Erich-Mcvey-19.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Kaela%20and%20Jonathan%20-%20Hood%20River%20Oregon/01%20Preparation/Elopement-Photography-on-film-by-Erich-Mcvey-19.jpg',
                  subalbum_id: 2, date_taken: Time.now)
                Photo.create!(
                  file_name: 'Elopement-Photography-on-film-by-Erich-Mcvey-2.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Kaela%20and%20Jonathan%20-%20Hood%20River%20Oregon/01%20Preparation/Elopement-Photography-on-film-by-Erich-Mcvey-2.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Kaela%20and%20Jonathan%20-%20Hood%20River%20Oregon/01%20Preparation/Elopement-Photography-on-film-by-Erich-Mcvey-2.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Kaela%20and%20Jonathan%20-%20Hood%20River%20Oregon/01%20Preparation/Elopement-Photography-on-film-by-Erich-Mcvey-2.jpg',
                  subalbum_id: 2, date_taken: Time.now)
                Photo.create!(
                  file_name: 'Elopement-Photography-on-film-by-Erich-Mcvey-3.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Kaela%20and%20Jonathan%20-%20Hood%20River%20Oregon/01%20Preparation/Elopement-Photography-on-film-by-Erich-Mcvey-3.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Kaela%20and%20Jonathan%20-%20Hood%20River%20Oregon/01%20Preparation/Elopement-Photography-on-film-by-Erich-Mcvey-3.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Kaela%20and%20Jonathan%20-%20Hood%20River%20Oregon/01%20Preparation/Elopement-Photography-on-film-by-Erich-Mcvey-3.jpg',
                  subalbum_id: 2, date_taken: Time.now)
                Photo.create!(
                  file_name: 'Elopement-Photography-on-film-by-Erich-Mcvey-4.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Kaela%20and%20Jonathan%20-%20Hood%20River%20Oregon/01%20Preparation/Elopement-Photography-on-film-by-Erich-Mcvey-4.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Kaela%20and%20Jonathan%20-%20Hood%20River%20Oregon/01%20Preparation/Elopement-Photography-on-film-by-Erich-Mcvey-4.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Kaela%20and%20Jonathan%20-%20Hood%20River%20Oregon/01%20Preparation/Elopement-Photography-on-film-by-Erich-Mcvey-4.jpg',
                  subalbum_id: 2, date_taken: Time.now)
                Photo.create!(
                  file_name: 'Elopement-Photography-on-film-by-Erich-Mcvey-5.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Kaela%20and%20Jonathan%20-%20Hood%20River%20Oregon/01%20Preparation/Elopement-Photography-on-film-by-Erich-Mcvey-5.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Kaela%20and%20Jonathan%20-%20Hood%20River%20Oregon/01%20Preparation/Elopement-Photography-on-film-by-Erich-Mcvey-5.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Kaela%20and%20Jonathan%20-%20Hood%20River%20Oregon/01%20Preparation/Elopement-Photography-on-film-by-Erich-Mcvey-5.jpg',
                  subalbum_id: 2, date_taken: Time.now)
                Photo.create!(
                  file_name: 'Elopement-Photography-on-film-by-Erich-Mcvey-7.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Kaela%20and%20Jonathan%20-%20Hood%20River%20Oregon/01%20Preparation/Elopement-Photography-on-film-by-Erich-Mcvey-7.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Kaela%20and%20Jonathan%20-%20Hood%20River%20Oregon/01%20Preparation/Elopement-Photography-on-film-by-Erich-Mcvey-7.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Kaela%20and%20Jonathan%20-%20Hood%20River%20Oregon/01%20Preparation/Elopement-Photography-on-film-by-Erich-Mcvey-7.jpg',
                  subalbum_id: 2, date_taken: Time.now)
                Photo.create!(
                  file_name: 'Elopement-Photography-on-film-by-Erich-Mcvey-8.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Kaela%20and%20Jonathan%20-%20Hood%20River%20Oregon/01%20Preparation/Elopement-Photography-on-film-by-Erich-Mcvey-8.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Kaela%20and%20Jonathan%20-%20Hood%20River%20Oregon/01%20Preparation/Elopement-Photography-on-film-by-Erich-Mcvey-8.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Kaela%20and%20Jonathan%20-%20Hood%20River%20Oregon/01%20Preparation/Elopement-Photography-on-film-by-Erich-Mcvey-8.jpg',
                  subalbum_id: 2, date_taken: Time.now)
                Photo.create!(
                  file_name: 'Elopement-Photography-on-film-by-Erich-Mcvey-9.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Kaela%20and%20Jonathan%20-%20Hood%20River%20Oregon/01%20Preparation/Elopement-Photography-on-film-by-Erich-Mcvey-9.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Kaela%20and%20Jonathan%20-%20Hood%20River%20Oregon/01%20Preparation/Elopement-Photography-on-film-by-Erich-Mcvey-9.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Kaela%20and%20Jonathan%20-%20Hood%20River%20Oregon/01%20Preparation/Elopement-Photography-on-film-by-Erich-Mcvey-9.jpg',
                  subalbum_id: 2, date_taken: Time.now)


                Photo.create!(
                  subalbum_id: 3, date_taken: Time.now,
                  file_name: 'Elopement-Photography-on-film-by-Erich-Mcvey-20.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Kaela%20and%20Jonathan%20-%20Hood%20River%20Oregon/02%20Ceremony/Elopement-Photography-on-film-by-Erich-Mcvey-20.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Kaela%20and%20Jonathan%20-%20Hood%20River%20Oregon/02%20Ceremony/Elopement-Photography-on-film-by-Erich-Mcvey-20.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Kaela%20and%20Jonathan%20-%20Hood%20River%20Oregon/02%20Ceremony/Elopement-Photography-on-film-by-Erich-Mcvey-20.jpg')
                Photo.create!(
                  subalbum_id: 3, date_taken: Time.now,
                  file_name: 'Elopement-Photography-on-film-by-Erich-Mcvey-21.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Kaela%20and%20Jonathan%20-%20Hood%20River%20Oregon/02%20Ceremony/Elopement-Photography-on-film-by-Erich-Mcvey-21.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Kaela%20and%20Jonathan%20-%20Hood%20River%20Oregon/02%20Ceremony/Elopement-Photography-on-film-by-Erich-Mcvey-21.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Kaela%20and%20Jonathan%20-%20Hood%20River%20Oregon/02%20Ceremony/Elopement-Photography-on-film-by-Erich-Mcvey-21.jpg')
                Photo.create!(
                  subalbum_id: 3, date_taken: Time.now,
                  file_name: 'Elopement-Photography-on-film-by-Erich-Mcvey-22.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Kaela%20and%20Jonathan%20-%20Hood%20River%20Oregon/02%20Ceremony/Elopement-Photography-on-film-by-Erich-Mcvey-22.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Kaela%20and%20Jonathan%20-%20Hood%20River%20Oregon/02%20Ceremony/Elopement-Photography-on-film-by-Erich-Mcvey-22.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Kaela%20and%20Jonathan%20-%20Hood%20River%20Oregon/02%20Ceremony/Elopement-Photography-on-film-by-Erich-Mcvey-22.jpg')


                Photo.create!(
                  subalbum_id: 4, date_taken: Time.now,
                  file_name: 'Elopement-Photography-on-film-by-Erich-Mcvey-23.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Kaela%20and%20Jonathan%20-%20Hood%20River%20Oregon/03_Portraits/Elopement-Photography-on-film-by-Erich-Mcvey-23.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Kaela%20and%20Jonathan%20-%20Hood%20River%20Oregon/03_Portraits/Elopement-Photography-on-film-by-Erich-Mcvey-23.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Kaela%20and%20Jonathan%20-%20Hood%20River%20Oregon/03_Portraits/Elopement-Photography-on-film-by-Erich-Mcvey-23.jpg')
                Photo.create!(
                  subalbum_id: 4, date_taken: Time.now,
                  file_name: 'Elopement-Photography-on-film-by-Erich-Mcvey-24.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Kaela%20and%20Jonathan%20-%20Hood%20River%20Oregon/03_Portraits/Elopement-Photography-on-film-by-Erich-Mcvey-24.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Kaela%20and%20Jonathan%20-%20Hood%20River%20Oregon/03_Portraits/Elopement-Photography-on-film-by-Erich-Mcvey-24.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Kaela%20and%20Jonathan%20-%20Hood%20River%20Oregon/03_Portraits/Elopement-Photography-on-film-by-Erich-Mcvey-24.jpg')
                Photo.create!(
                  subalbum_id: 4, date_taken: Time.now,
                  file_name: 'Elopement-Photography-on-film-by-Erich-Mcvey-25.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Kaela%20and%20Jonathan%20-%20Hood%20River%20Oregon/03_Portraits/Elopement-Photography-on-film-by-Erich-Mcvey-25.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Kaela%20and%20Jonathan%20-%20Hood%20River%20Oregon/03_Portraits/Elopement-Photography-on-film-by-Erich-Mcvey-25.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Kaela%20and%20Jonathan%20-%20Hood%20River%20Oregon/03_Portraits/Elopement-Photography-on-film-by-Erich-Mcvey-25.jpg')
                Photo.create!(
                  subalbum_id: 4, date_taken: Time.now,
                  file_name: 'Elopement-Photography-on-film-by-Erich-Mcvey-26.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Kaela%20and%20Jonathan%20-%20Hood%20River%20Oregon/03_Portraits/Elopement-Photography-on-film-by-Erich-Mcvey-26.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Kaela%20and%20Jonathan%20-%20Hood%20River%20Oregon/03_Portraits/Elopement-Photography-on-film-by-Erich-Mcvey-26.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Kaela%20and%20Jonathan%20-%20Hood%20River%20Oregon/03_Portraits/Elopement-Photography-on-film-by-Erich-Mcvey-26.jpg')
                Photo.create!(
                  subalbum_id: 4, date_taken: Time.now,
                  file_name: 'Elopement-Photography-on-film-by-Erich-Mcvey-27.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Kaela%20and%20Jonathan%20-%20Hood%20River%20Oregon/03_Portraits/Elopement-Photography-on-film-by-Erich-Mcvey-27.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Kaela%20and%20Jonathan%20-%20Hood%20River%20Oregon/03_Portraits/Elopement-Photography-on-film-by-Erich-Mcvey-27.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Kaela%20and%20Jonathan%20-%20Hood%20River%20Oregon/03_Portraits/Elopement-Photography-on-film-by-Erich-Mcvey-27.jpg')
                Photo.create!(
                  subalbum_id: 4, date_taken: Time.now,
                  file_name: 'Elopement-Photography-on-film-by-Erich-Mcvey-28.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Kaela%20and%20Jonathan%20-%20Hood%20River%20Oregon/03_Portraits/Elopement-Photography-on-film-by-Erich-Mcvey-28.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Kaela%20and%20Jonathan%20-%20Hood%20River%20Oregon/03_Portraits/Elopement-Photography-on-film-by-Erich-Mcvey-28.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Kaela%20and%20Jonathan%20-%20Hood%20River%20Oregon/03_Portraits/Elopement-Photography-on-film-by-Erich-Mcvey-28.jpg')
                Photo.create!(
                  subalbum_id: 4, date_taken: Time.now,
                  file_name: 'Elopement-Photography-on-film-by-Erich-Mcvey-29.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Kaela%20and%20Jonathan%20-%20Hood%20River%20Oregon/03_Portraits/Elopement-Photography-on-film-by-Erich-Mcvey-29.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Kaela%20and%20Jonathan%20-%20Hood%20River%20Oregon/03_Portraits/Elopement-Photography-on-film-by-Erich-Mcvey-29.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Kaela%20and%20Jonathan%20-%20Hood%20River%20Oregon/03_Portraits/Elopement-Photography-on-film-by-Erich-Mcvey-29.jpg')
                Photo.create!(
                  subalbum_id: 4, date_taken: Time.now,
                  file_name: 'Elopement-Photography-on-film-by-Erich-Mcvey-30.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Kaela%20and%20Jonathan%20-%20Hood%20River%20Oregon/03_Portraits/Elopement-Photography-on-film-by-Erich-Mcvey-30.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Kaela%20and%20Jonathan%20-%20Hood%20River%20Oregon/03_Portraits/Elopement-Photography-on-film-by-Erich-Mcvey-30.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Kaela%20and%20Jonathan%20-%20Hood%20River%20Oregon/03_Portraits/Elopement-Photography-on-film-by-Erich-Mcvey-30.jpg')
                Photo.create!(
                  subalbum_id: 4, date_taken: Time.now,
                  file_name: 'Elopement-Photography-on-film-by-Erich-Mcvey-31.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Kaela%20and%20Jonathan%20-%20Hood%20River%20Oregon/03_Portraits/Elopement-Photography-on-film-by-Erich-Mcvey-31.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Kaela%20and%20Jonathan%20-%20Hood%20River%20Oregon/03_Portraits/Elopement-Photography-on-film-by-Erich-Mcvey-31.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Kaela%20and%20Jonathan%20-%20Hood%20River%20Oregon/03_Portraits/Elopement-Photography-on-film-by-Erich-Mcvey-31.jpg')
                Photo.create!(
                  subalbum_id: 4, date_taken: Time.now,
                  file_name: 'Elopement-Photography-on-film-by-Erich-Mcvey-32.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Kaela%20and%20Jonathan%20-%20Hood%20River%20Oregon/03_Portraits/Elopement-Photography-on-film-by-Erich-Mcvey-32.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Kaela%20and%20Jonathan%20-%20Hood%20River%20Oregon/03_Portraits/Elopement-Photography-on-film-by-Erich-Mcvey-32.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Kaela%20and%20Jonathan%20-%20Hood%20River%20Oregon/03_Portraits/Elopement-Photography-on-film-by-Erich-Mcvey-32.jpg')
                Photo.create!(
                  subalbum_id: 4, date_taken: Time.now,
                  file_name: 'Elopement-Photography-on-film-by-Erich-Mcvey-33.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Kaela%20and%20Jonathan%20-%20Hood%20River%20Oregon/03_Portraits/Elopement-Photography-on-film-by-Erich-Mcvey-33.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Kaela%20and%20Jonathan%20-%20Hood%20River%20Oregon/03_Portraits/Elopement-Photography-on-film-by-Erich-Mcvey-33.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Kaela%20and%20Jonathan%20-%20Hood%20River%20Oregon/03_Portraits/Elopement-Photography-on-film-by-Erich-Mcvey-33.jpg')
                Photo.create!(
                  subalbum_id: 4, date_taken: Time.now,
                  file_name: 'Elopement-Photography-on-film-by-Erich-Mcvey-34.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Kaela%20and%20Jonathan%20-%20Hood%20River%20Oregon/03_Portraits/Elopement-Photography-on-film-by-Erich-Mcvey-34.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Kaela%20and%20Jonathan%20-%20Hood%20River%20Oregon/03_Portraits/Elopement-Photography-on-film-by-Erich-Mcvey-34.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Kaela%20and%20Jonathan%20-%20Hood%20River%20Oregon/03_Portraits/Elopement-Photography-on-film-by-Erich-Mcvey-34.jpg')
                Photo.create!(
                  subalbum_id: 4, date_taken: Time.now,
                  file_name: 'Elopement-Photography-on-film-by-Erich-Mcvey-35.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Kaela%20and%20Jonathan%20-%20Hood%20River%20Oregon/03_Portraits/Elopement-Photography-on-film-by-Erich-Mcvey-35.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Kaela%20and%20Jonathan%20-%20Hood%20River%20Oregon/03_Portraits/Elopement-Photography-on-film-by-Erich-Mcvey-35.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Kaela%20and%20Jonathan%20-%20Hood%20River%20Oregon/03_Portraits/Elopement-Photography-on-film-by-Erich-Mcvey-35.jpg')
                Photo.create!(
                  subalbum_id: 4, date_taken: Time.now,
                  file_name: 'Elopement-Photography-on-film-by-Erich-Mcvey-36.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Kaela%20and%20Jonathan%20-%20Hood%20River%20Oregon/03_Portraits/Elopement-Photography-on-film-by-Erich-Mcvey-36.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Kaela%20and%20Jonathan%20-%20Hood%20River%20Oregon/03_Portraits/Elopement-Photography-on-film-by-Erich-Mcvey-36.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Kaela%20and%20Jonathan%20-%20Hood%20River%20Oregon/03_Portraits/Elopement-Photography-on-film-by-Erich-Mcvey-36.jpg')
                Photo.create!(
                  subalbum_id: 4, date_taken: Time.now,
                  file_name: 'Elopement-Photography-on-film-by-Erich-Mcvey-37.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Kaela%20and%20Jonathan%20-%20Hood%20River%20Oregon/03_Portraits/Elopement-Photography-on-film-by-Erich-Mcvey-37.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Kaela%20and%20Jonathan%20-%20Hood%20River%20Oregon/03_Portraits/Elopement-Photography-on-film-by-Erich-Mcvey-37.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Kaela%20and%20Jonathan%20-%20Hood%20River%20Oregon/03_Portraits/Elopement-Photography-on-film-by-Erich-Mcvey-37.jpg')
                Photo.create!(
                  subalbum_id: 4, date_taken: Time.now,
                  file_name: 'Elopement-Photography-on-film-by-Erich-Mcvey-38.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Kaela%20and%20Jonathan%20-%20Hood%20River%20Oregon/03_Portraits/Elopement-Photography-on-film-by-Erich-Mcvey-38.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Kaela%20and%20Jonathan%20-%20Hood%20River%20Oregon/03_Portraits/Elopement-Photography-on-film-by-Erich-Mcvey-38.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Kaela%20and%20Jonathan%20-%20Hood%20River%20Oregon/03_Portraits/Elopement-Photography-on-film-by-Erich-Mcvey-38.jpg')

        Album.create!(title: "New Zealand", event_date: "2015-04-26 00:00:00 -0800", cover_image_id: 48, user_id: 1, status: 'Published') #2
        # Auto Highlights Subalbum #5

                Photo.create!(
                  subalbum_id: 5, date_taken: Time.now,
                  file_name: '0011-New-Zealand.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/New%20Zealand/00_Highlights/0011-New-Zealand.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/New%20Zealand/00_Highlights/0011-New-Zealand.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/New%20Zealand/00_Highlights/0011-New-Zealand.jpg')
                Photo.create!(
                  subalbum_id: 5, date_taken: Time.now,
                  file_name: '0012-New-Zealand.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/New%20Zealand/00_Highlights/0012-New-Zealand.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/New%20Zealand/00_Highlights/0012-New-Zealand.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/New%20Zealand/00_Highlights/0012-New-Zealand.jpg')
                Photo.create!(
                  subalbum_id: 5, date_taken: Time.now,
                  file_name: '0013-New-Zealand.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/New%20Zealand/00_Highlights/0013-New-Zealand.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/New%20Zealand/00_Highlights/0013-New-Zealand.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/New%20Zealand/00_Highlights/0013-New-Zealand.jpg')
                Photo.create!(
                  subalbum_id: 5, date_taken: Time.now,
                  file_name: '0023-New-Zealand.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/New%20Zealand/00_Highlights/0023-New-Zealand.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/New%20Zealand/00_Highlights/0023-New-Zealand.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/New%20Zealand/00_Highlights/0023-New-Zealand.jpg')
                Photo.create!(
                  subalbum_id: 5, date_taken: Time.now,
                  file_name: '0034-New-Zealand.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/New%20Zealand/00_Highlights/0034-New-Zealand.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/New%20Zealand/00_Highlights/0034-New-Zealand.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/New%20Zealand/00_Highlights/0034-New-Zealand.jpg')
                Photo.create!(
                  subalbum_id: 5, date_taken: Time.now,
                  file_name: '0038-New-Zealand.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/New%20Zealand/00_Highlights/0038-New-Zealand.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/New%20Zealand/00_Highlights/0038-New-Zealand.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/New%20Zealand/00_Highlights/0038-New-Zealand.jpg')
                Photo.create!(
                  subalbum_id: 5, date_taken: Time.now,
                  file_name: '0045-New-Zealand.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/New%20Zealand/00_Highlights/0045-New-Zealand.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/New%20Zealand/00_Highlights/0045-New-Zealand.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/New%20Zealand/00_Highlights/0045-New-Zealand.jpg')
                Photo.create!(
                  subalbum_id: 5, date_taken: Time.now,
                  file_name: '0053-New-Zealand.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/New%20Zealand/00_Highlights/0053-New-Zealand.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/New%20Zealand/00_Highlights/0053-New-Zealand.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/New%20Zealand/00_Highlights/0053-New-Zealand.jpg')
                Photo.create!(
                  subalbum_id: 5, date_taken: Time.now,
                  file_name: '0062-New-Zealand.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/New%20Zealand/00_Highlights/0062-New-Zealand.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/New%20Zealand/00_Highlights/0062-New-Zealand.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/New%20Zealand/00_Highlights/0062-New-Zealand.jpg')
                Photo.create!(
                  subalbum_id: 5, date_taken: Time.now,
                  file_name: '0064-New-Zealand.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/New%20Zealand/00_Highlights/0064-New-Zealand.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/New%20Zealand/00_Highlights/0064-New-Zealand.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/New%20Zealand/00_Highlights/0064-New-Zealand.jpg')
                Photo.create!(
                  subalbum_id: 5, date_taken: Time.now,
                  file_name: '0065-New-Zealand.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/New%20Zealand/00_Highlights/0065-New-Zealand.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/New%20Zealand/00_Highlights/0065-New-Zealand.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/New%20Zealand/00_Highlights/0065-New-Zealand.jpg')
                Photo.create!(
                  subalbum_id: 5, date_taken: Time.now,
                  file_name: '0076-New-Zealand.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/New%20Zealand/00_Highlights/0076-New-Zealand.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/New%20Zealand/00_Highlights/0076-New-Zealand.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/New%20Zealand/00_Highlights/0076-New-Zealand.jpg')
                Photo.create!(
                  subalbum_id: 5, date_taken: Time.now,
                  file_name: '0087-New-Zealand.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/New%20Zealand/00_Highlights/0087-New-Zealand.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/New%20Zealand/00_Highlights/0087-New-Zealand.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/New%20Zealand/00_Highlights/0087-New-Zealand.jpg')
                Photo.create!(
                  subalbum_id: 5, date_taken: Time.now,
                  file_name: '0108-New-Zealand.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/New%20Zealand/00_Highlights/0108-New-Zealand.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/New%20Zealand/00_Highlights/0108-New-Zealand.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/New%20Zealand/00_Highlights/0108-New-Zealand.jpg')
                Photo.create!(
                  subalbum_id: 5, date_taken: Time.now,
                  file_name: '0114-New-Zealand.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/New%20Zealand/00_Highlights/0114-New-Zealand.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/New%20Zealand/00_Highlights/0114-New-Zealand.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/New%20Zealand/00_Highlights/0114-New-Zealand.jpg')
                Photo.create!(
                  subalbum_id: 5, date_taken: Time.now,
                  file_name: '0131-New-Zealand.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/New%20Zealand/00_Highlights/0131-New-Zealand.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/New%20Zealand/00_Highlights/0131-New-Zealand.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/New%20Zealand/00_Highlights/0131-New-Zealand.jpg')
                Photo.create!(
                  subalbum_id: 5, date_taken: Time.now,
                  file_name: '0138-New-Zealand.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/New%20Zealand/00_Highlights/0138-New-Zealand.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/New%20Zealand/00_Highlights/0138-New-Zealand.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/New%20Zealand/00_Highlights/0138-New-Zealand.jpg')
                Photo.create!(
                  subalbum_id: 5, date_taken: Time.now,
                  file_name: '0147-New-Zealand.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/New%20Zealand/00_Highlights/0147-New-Zealand.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/New%20Zealand/00_Highlights/0147-New-Zealand.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/New%20Zealand/00_Highlights/0147-New-Zealand.jpg')
                Photo.create!(
                  subalbum_id: 5, date_taken: Time.now,
                  file_name: '0151-New-Zealand.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/New%20Zealand/00_Highlights/0151-New-Zealand.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/New%20Zealand/00_Highlights/0151-New-Zealand.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/New%20Zealand/00_Highlights/0151-New-Zealand.jpg')
                Photo.create!(
                  subalbum_id: 5, date_taken: Time.now,
                  file_name: '0152-New-Zealand.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/New%20Zealand/00_Highlights/0152-New-Zealand.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/New%20Zealand/00_Highlights/0152-New-Zealand.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/New%20Zealand/00_Highlights/0152-New-Zealand.jpg')
                Photo.create!(
                  subalbum_id: 5, date_taken: Time.now,
                  file_name: '0165-New-Zealand.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/New%20Zealand/00_Highlights/0165-New-Zealand.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/New%20Zealand/00_Highlights/0165-New-Zealand.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/New%20Zealand/00_Highlights/0165-New-Zealand.jpg')

          Album.create!(title: "Geraldine Magazine", event_date: "2014-12-03 00:00:00 -0800", cover_image_id: 73, user_id: 1, status: 'Published') #Album3

          # Auto Highlights Subalbum #6

                Photo.create!(
                  subalbum_id: 6, date_taken: Time.now,
                  file_name: 'California-Film-Photography-by-Erich-McVey-1.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Geraldine%20Magazine/California-Film-Photography-by-Erich-McVey-1.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Geraldine%20Magazine/California-Film-Photography-by-Erich-McVey-1.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Geraldine%20Magazine/California-Film-Photography-by-Erich-McVey-1.jpg')
                Photo.create!(
                  subalbum_id: 6, date_taken: Time.now,
                  file_name: 'California-Film-Photography-by-Erich-McVey-10.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Geraldine%20Magazine/California-Film-Photography-by-Erich-McVey-10.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Geraldine%20Magazine/California-Film-Photography-by-Erich-McVey-10.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Geraldine%20Magazine/California-Film-Photography-by-Erich-McVey-10.jpg')
                Photo.create!(
                  subalbum_id: 6, date_taken: Time.now,
                  file_name: 'California-Film-Photography-by-Erich-McVey-11.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Geraldine%20Magazine/California-Film-Photography-by-Erich-McVey-11.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Geraldine%20Magazine/California-Film-Photography-by-Erich-McVey-11.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Geraldine%20Magazine/California-Film-Photography-by-Erich-McVey-11.jpg')
                Photo.create!(
                  subalbum_id: 6, date_taken: Time.now,
                  file_name: 'California-Film-Photography-by-Erich-McVey-12.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Geraldine%20Magazine/California-Film-Photography-by-Erich-McVey-12.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Geraldine%20Magazine/California-Film-Photography-by-Erich-McVey-12.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Geraldine%20Magazine/California-Film-Photography-by-Erich-McVey-12.jpg')
                Photo.create!(
                  subalbum_id: 6, date_taken: Time.now,
                  file_name: 'California-Film-Photography-by-Erich-McVey-13.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Geraldine%20Magazine/California-Film-Photography-by-Erich-McVey-13.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Geraldine%20Magazine/California-Film-Photography-by-Erich-McVey-13.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Geraldine%20Magazine/California-Film-Photography-by-Erich-McVey-13.jpg')
                Photo.create!(
                  subalbum_id: 6, date_taken: Time.now,
                  file_name: 'California-Film-Photography-by-Erich-McVey-14.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Geraldine%20Magazine/California-Film-Photography-by-Erich-McVey-14.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Geraldine%20Magazine/California-Film-Photography-by-Erich-McVey-14.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Geraldine%20Magazine/California-Film-Photography-by-Erich-McVey-14.jpg')
                Photo.create!(
                  subalbum_id: 6, date_taken: Time.now,
                  file_name: 'California-Film-Photography-by-Erich-McVey-15.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Geraldine%20Magazine/California-Film-Photography-by-Erich-McVey-15.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Geraldine%20Magazine/California-Film-Photography-by-Erich-McVey-15.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Geraldine%20Magazine/California-Film-Photography-by-Erich-McVey-15.jpg')
                Photo.create!(
                  subalbum_id: 6, date_taken: Time.now,
                  file_name: 'California-Film-Photography-by-Erich-McVey-16.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Geraldine%20Magazine/California-Film-Photography-by-Erich-McVey-16.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Geraldine%20Magazine/California-Film-Photography-by-Erich-McVey-16.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Geraldine%20Magazine/California-Film-Photography-by-Erich-McVey-16.jpg')
                Photo.create!(
                  subalbum_id: 6, date_taken: Time.now,
                  file_name: 'California-Film-Photography-by-Erich-McVey-17.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Geraldine%20Magazine/California-Film-Photography-by-Erich-McVey-17.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Geraldine%20Magazine/California-Film-Photography-by-Erich-McVey-17.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Geraldine%20Magazine/California-Film-Photography-by-Erich-McVey-17.jpg')
                Photo.create!(
                  subalbum_id: 6, date_taken: Time.now,
                  file_name: 'California-Film-Photography-by-Erich-McVey-18.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Geraldine%20Magazine/California-Film-Photography-by-Erich-McVey-18.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Geraldine%20Magazine/California-Film-Photography-by-Erich-McVey-18.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Geraldine%20Magazine/California-Film-Photography-by-Erich-McVey-18.jpg')
                Photo.create!(
                  subalbum_id: 6, date_taken: Time.now,
                  file_name: 'California-Film-Photography-by-Erich-McVey-19.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Geraldine%20Magazine/California-Film-Photography-by-Erich-McVey-19.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Geraldine%20Magazine/California-Film-Photography-by-Erich-McVey-19.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Geraldine%20Magazine/California-Film-Photography-by-Erich-McVey-19.jpg')
                Photo.create!(
                  subalbum_id: 6, date_taken: Time.now,
                  file_name: 'California-Film-Photography-by-Erich-McVey-2.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Geraldine%20Magazine/California-Film-Photography-by-Erich-McVey-2.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Geraldine%20Magazine/California-Film-Photography-by-Erich-McVey-2.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Geraldine%20Magazine/California-Film-Photography-by-Erich-McVey-2.jpg')
                Photo.create!(
                  subalbum_id: 6, date_taken: Time.now,
                  file_name: 'California-Film-Photography-by-Erich-McVey-20.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Geraldine%20Magazine/California-Film-Photography-by-Erich-McVey-20.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Geraldine%20Magazine/California-Film-Photography-by-Erich-McVey-20.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Geraldine%20Magazine/California-Film-Photography-by-Erich-McVey-20.jpg')
                Photo.create!(
                  subalbum_id: 6, date_taken: Time.now,
                  file_name: 'California-Film-Photography-by-Erich-McVey-21.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Geraldine%20Magazine/California-Film-Photography-by-Erich-McVey-21.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Geraldine%20Magazine/California-Film-Photography-by-Erich-McVey-21.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Geraldine%20Magazine/California-Film-Photography-by-Erich-McVey-21.jpg')
                Photo.create!(
                  subalbum_id: 6, date_taken: Time.now,
                  file_name: 'California-Film-Photography-by-Erich-McVey-22.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Geraldine%20Magazine/California-Film-Photography-by-Erich-McVey-22.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Geraldine%20Magazine/California-Film-Photography-by-Erich-McVey-22.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Geraldine%20Magazine/California-Film-Photography-by-Erich-McVey-22.jpg')
                Photo.create!(
                  subalbum_id: 6, date_taken: Time.now,
                  file_name: 'California-Film-Photography-by-Erich-McVey-23.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Geraldine%20Magazine/California-Film-Photography-by-Erich-McVey-23.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Geraldine%20Magazine/California-Film-Photography-by-Erich-McVey-23.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Geraldine%20Magazine/California-Film-Photography-by-Erich-McVey-23.jpg')
                Photo.create!(
                  subalbum_id: 6, date_taken: Time.now,
                  file_name: 'California-Film-Photography-by-Erich-McVey-24.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Geraldine%20Magazine/California-Film-Photography-by-Erich-McVey-24.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Geraldine%20Magazine/California-Film-Photography-by-Erich-McVey-24.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Geraldine%20Magazine/California-Film-Photography-by-Erich-McVey-24.jpg')
                Photo.create!(
                  subalbum_id: 6, date_taken: Time.now,
                  file_name: 'California-Film-Photography-by-Erich-McVey-26.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Geraldine%20Magazine/California-Film-Photography-by-Erich-McVey-26.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Geraldine%20Magazine/California-Film-Photography-by-Erich-McVey-26.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Geraldine%20Magazine/California-Film-Photography-by-Erich-McVey-26.jpg')
                Photo.create!(
                  subalbum_id: 6, date_taken: Time.now,
                  file_name: 'California-Film-Photography-by-Erich-McVey-27.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Geraldine%20Magazine/California-Film-Photography-by-Erich-McVey-27.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Geraldine%20Magazine/California-Film-Photography-by-Erich-McVey-27.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Geraldine%20Magazine/California-Film-Photography-by-Erich-McVey-27.jpg')
                Photo.create!(
                  subalbum_id: 6, date_taken: Time.now,
                  file_name: 'California-Film-Photography-by-Erich-McVey-28.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Geraldine%20Magazine/California-Film-Photography-by-Erich-McVey-28.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Geraldine%20Magazine/California-Film-Photography-by-Erich-McVey-28.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Geraldine%20Magazine/California-Film-Photography-by-Erich-McVey-28.jpg')
                Photo.create!(
                  subalbum_id: 6, date_taken: Time.now,
                  file_name: 'California-Film-Photography-by-Erich-McVey-29.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Geraldine%20Magazine/California-Film-Photography-by-Erich-McVey-29.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Geraldine%20Magazine/California-Film-Photography-by-Erich-McVey-29.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Geraldine%20Magazine/California-Film-Photography-by-Erich-McVey-29.jpg')
                Photo.create!(
                  subalbum_id: 6, date_taken: Time.now,
                  file_name: 'California-Film-Photography-by-Erich-McVey-3.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Geraldine%20Magazine/California-Film-Photography-by-Erich-McVey-3.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Geraldine%20Magazine/California-Film-Photography-by-Erich-McVey-3.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Geraldine%20Magazine/California-Film-Photography-by-Erich-McVey-3.jpg')
                Photo.create!(
                  subalbum_id: 6, date_taken: Time.now,
                  file_name: 'California-Film-Photography-by-Erich-McVey-30.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Geraldine%20Magazine/California-Film-Photography-by-Erich-McVey-30.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Geraldine%20Magazine/California-Film-Photography-by-Erich-McVey-30.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Geraldine%20Magazine/California-Film-Photography-by-Erich-McVey-30.jpg')
                Photo.create!(
                  subalbum_id: 6, date_taken: Time.now,
                  file_name: 'California-Film-Photography-by-Erich-McVey-31.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Geraldine%20Magazine/California-Film-Photography-by-Erich-McVey-31.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Geraldine%20Magazine/California-Film-Photography-by-Erich-McVey-31.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Geraldine%20Magazine/California-Film-Photography-by-Erich-McVey-31.jpg')
                Photo.create!(
                  subalbum_id: 6, date_taken: Time.now,
                  file_name: 'California-Film-Photography-by-Erich-McVey-4.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Geraldine%20Magazine/California-Film-Photography-by-Erich-McVey-4.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Geraldine%20Magazine/California-Film-Photography-by-Erich-McVey-4.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Geraldine%20Magazine/California-Film-Photography-by-Erich-McVey-4.jpg')
                Photo.create!(
                  subalbum_id: 6, date_taken: Time.now,
                  file_name: 'California-Film-Photography-by-Erich-McVey-5.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Geraldine%20Magazine/California-Film-Photography-by-Erich-McVey-5.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Geraldine%20Magazine/California-Film-Photography-by-Erich-McVey-5.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Geraldine%20Magazine/California-Film-Photography-by-Erich-McVey-5.jpg')
                Photo.create!(
                  subalbum_id: 6, date_taken: Time.now,
                  file_name: 'California-Film-Photography-by-Erich-McVey-6.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Geraldine%20Magazine/California-Film-Photography-by-Erich-McVey-6.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Geraldine%20Magazine/California-Film-Photography-by-Erich-McVey-6.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Geraldine%20Magazine/California-Film-Photography-by-Erich-McVey-6.jpg')
                Photo.create!(
                  subalbum_id: 6, date_taken: Time.now,
                  file_name: 'California-Film-Photography-by-Erich-McVey-7.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Geraldine%20Magazine/California-Film-Photography-by-Erich-McVey-7.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Geraldine%20Magazine/California-Film-Photography-by-Erich-McVey-7.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Geraldine%20Magazine/California-Film-Photography-by-Erich-McVey-7.jpg')
                Photo.create!(
                  subalbum_id: 6, date_taken: Time.now,
                  file_name: 'California-Film-Photography-by-Erich-McVey-8.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Geraldine%20Magazine/California-Film-Photography-by-Erich-McVey-8.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Geraldine%20Magazine/California-Film-Photography-by-Erich-McVey-8.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Geraldine%20Magazine/California-Film-Photography-by-Erich-McVey-8.jpg')
                Photo.create!(
                  subalbum_id: 6, date_taken: Time.now,
                  file_name: 'California-Film-Photography-by-Erich-McVey-9.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Geraldine%20Magazine/California-Film-Photography-by-Erich-McVey-9.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Geraldine%20Magazine/California-Film-Photography-by-Erich-McVey-9.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Geraldine%20Magazine/California-Film-Photography-by-Erich-McVey-9.jpg')

          Album.create!(title: "Adele and David", event_date: "2015-01-03 00:00:00 -0800", cover_image_id: 129, user_id: 1, status: 'Published') #Album4

          # Auto Highlights Subalbum #7
          Subalbum.create!(title: "Preparation ", album_id: 4) #Subalbum8
          Subalbum.create!(title: "Portraits", album_id: 4) #Subalbum9

                Photo.create!(
                  subalbum_id: 7, date_taken: Time.now,
                  file_name: 'New-Zealand-Fine-Art-Wedding-Photography-on-Film-by-Erich-McVey-10.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Adele%20and%20David/00_Highlights/New-Zealand-Fine-Art-Wedding-Photography-on-Film-by-Erich-McVey-10.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Adele%20and%20David/00_Highlights/New-Zealand-Fine-Art-Wedding-Photography-on-Film-by-Erich-McVey-10.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Adele%20and%20David/00_Highlights/New-Zealand-Fine-Art-Wedding-Photography-on-Film-by-Erich-McVey-10.jpg')
                Photo.create!(
                  subalbum_id: 7, date_taken: Time.now,
                  file_name: 'New-Zealand-Fine-Art-Wedding-Photography-on-Film-by-Erich-McVey-12.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Adele%20and%20David/00_Highlights/New-Zealand-Fine-Art-Wedding-Photography-on-Film-by-Erich-McVey-12.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Adele%20and%20David/00_Highlights/New-Zealand-Fine-Art-Wedding-Photography-on-Film-by-Erich-McVey-12.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Adele%20and%20David/00_Highlights/New-Zealand-Fine-Art-Wedding-Photography-on-Film-by-Erich-McVey-12.jpg')
                Photo.create!(
                  subalbum_id: 7, date_taken: Time.now,
                  file_name: 'New-Zealand-Fine-Art-Wedding-Photography-on-Film-by-Erich-McVey-13.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Adele%20and%20David/00_Highlights/New-Zealand-Fine-Art-Wedding-Photography-on-Film-by-Erich-McVey-13.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Adele%20and%20David/00_Highlights/New-Zealand-Fine-Art-Wedding-Photography-on-Film-by-Erich-McVey-13.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Adele%20and%20David/00_Highlights/New-Zealand-Fine-Art-Wedding-Photography-on-Film-by-Erich-McVey-13.jpg')
                Photo.create!(
                  subalbum_id: 7, date_taken: Time.now,
                  file_name: 'New-Zealand-Fine-Art-Wedding-Photography-on-Film-by-Erich-McVey-17.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Adele%20and%20David/00_Highlights/New-Zealand-Fine-Art-Wedding-Photography-on-Film-by-Erich-McVey-17.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Adele%20and%20David/00_Highlights/New-Zealand-Fine-Art-Wedding-Photography-on-Film-by-Erich-McVey-17.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Adele%20and%20David/00_Highlights/New-Zealand-Fine-Art-Wedding-Photography-on-Film-by-Erich-McVey-17.jpg')
                Photo.create!(
                  subalbum_id: 7, date_taken: Time.now,
                  file_name: 'New-Zealand-Fine-Art-Wedding-Photography-on-Film-by-Erich-McVey-18.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Adele%20and%20David/00_Highlights/New-Zealand-Fine-Art-Wedding-Photography-on-Film-by-Erich-McVey-18.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Adele%20and%20David/00_Highlights/New-Zealand-Fine-Art-Wedding-Photography-on-Film-by-Erich-McVey-18.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Adele%20and%20David/00_Highlights/New-Zealand-Fine-Art-Wedding-Photography-on-Film-by-Erich-McVey-18.jpg')
                Photo.create!(
                  subalbum_id: 7, date_taken: Time.now,
                  file_name: 'New-Zealand-Fine-Art-Wedding-Photography-on-Film-by-Erich-McVey-2.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Adele%20and%20David/00_Highlights/New-Zealand-Fine-Art-Wedding-Photography-on-Film-by-Erich-McVey-2.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Adele%20and%20David/00_Highlights/New-Zealand-Fine-Art-Wedding-Photography-on-Film-by-Erich-McVey-2.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Adele%20and%20David/00_Highlights/New-Zealand-Fine-Art-Wedding-Photography-on-Film-by-Erich-McVey-2.jpg')
                Photo.create!(
                  subalbum_id: 7, date_taken: Time.now,
                  file_name: 'New-Zealand-Fine-Art-Wedding-Photography-on-Film-by-Erich-McVey-21.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Adele%20and%20David/00_Highlights/New-Zealand-Fine-Art-Wedding-Photography-on-Film-by-Erich-McVey-21.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Adele%20and%20David/00_Highlights/New-Zealand-Fine-Art-Wedding-Photography-on-Film-by-Erich-McVey-21.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Adele%20and%20David/00_Highlights/New-Zealand-Fine-Art-Wedding-Photography-on-Film-by-Erich-McVey-21.jpg')
                Photo.create!(
                  subalbum_id: 7, date_taken: Time.now,
                  file_name: 'New-Zealand-Fine-Art-Wedding-Photography-on-Film-by-Erich-McVey-26.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Adele%20and%20David/00_Highlights/New-Zealand-Fine-Art-Wedding-Photography-on-Film-by-Erich-McVey-26.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Adele%20and%20David/00_Highlights/New-Zealand-Fine-Art-Wedding-Photography-on-Film-by-Erich-McVey-26.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Adele%20and%20David/00_Highlights/New-Zealand-Fine-Art-Wedding-Photography-on-Film-by-Erich-McVey-26.jpg')
                Photo.create!(
                  subalbum_id: 7, date_taken: Time.now,
                  file_name: 'New-Zealand-Fine-Art-Wedding-Photography-on-Film-by-Erich-McVey-29.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Adele%20and%20David/00_Highlights/New-Zealand-Fine-Art-Wedding-Photography-on-Film-by-Erich-McVey-29.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Adele%20and%20David/00_Highlights/New-Zealand-Fine-Art-Wedding-Photography-on-Film-by-Erich-McVey-29.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Adele%20and%20David/00_Highlights/New-Zealand-Fine-Art-Wedding-Photography-on-Film-by-Erich-McVey-29.jpg')
                Photo.create!(
                  subalbum_id: 7, date_taken: Time.now,
                  file_name: 'New-Zealand-Fine-Art-Wedding-Photography-on-Film-by-Erich-McVey-31.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Adele%20and%20David/00_Highlights/New-Zealand-Fine-Art-Wedding-Photography-on-Film-by-Erich-McVey-31.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Adele%20and%20David/00_Highlights/New-Zealand-Fine-Art-Wedding-Photography-on-Film-by-Erich-McVey-31.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Adele%20and%20David/00_Highlights/New-Zealand-Fine-Art-Wedding-Photography-on-Film-by-Erich-McVey-31.jpg')
                Photo.create!(
                  subalbum_id: 7, date_taken: Time.now,
                  file_name: 'New-Zealand-Fine-Art-Wedding-Photography-on-Film-by-Erich-McVey-35.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Adele%20and%20David/00_Highlights/New-Zealand-Fine-Art-Wedding-Photography-on-Film-by-Erich-McVey-35.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Adele%20and%20David/00_Highlights/New-Zealand-Fine-Art-Wedding-Photography-on-Film-by-Erich-McVey-35.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Adele%20and%20David/00_Highlights/New-Zealand-Fine-Art-Wedding-Photography-on-Film-by-Erich-McVey-35.jpg')
                Photo.create!(
                  subalbum_id: 7, date_taken: Time.now,
                  file_name: 'New-Zealand-Fine-Art-Wedding-Photography-on-Film-by-Erich-McVey-4.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Adele%20and%20David/00_Highlights/New-Zealand-Fine-Art-Wedding-Photography-on-Film-by-Erich-McVey-4.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Adele%20and%20David/00_Highlights/New-Zealand-Fine-Art-Wedding-Photography-on-Film-by-Erich-McVey-4.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Adele%20and%20David/00_Highlights/New-Zealand-Fine-Art-Wedding-Photography-on-Film-by-Erich-McVey-4.jpg')
                Photo.create!(
                  subalbum_id: 7, date_taken: Time.now,
                  file_name: 'New-Zealand-Fine-Art-Wedding-Photography-on-Film-by-Erich-McVey-40.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Adele%20and%20David/00_Highlights/New-Zealand-Fine-Art-Wedding-Photography-on-Film-by-Erich-McVey-40.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Adele%20and%20David/00_Highlights/New-Zealand-Fine-Art-Wedding-Photography-on-Film-by-Erich-McVey-40.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Adele%20and%20David/00_Highlights/New-Zealand-Fine-Art-Wedding-Photography-on-Film-by-Erich-McVey-40.jpg')
                Photo.create!(
                  subalbum_id: 7, date_taken: Time.now,
                  file_name: 'New-Zealand-Fine-Art-Wedding-Photography-on-Film-by-Erich-McVey-43.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Adele%20and%20David/00_Highlights/New-Zealand-Fine-Art-Wedding-Photography-on-Film-by-Erich-McVey-43.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Adele%20and%20David/00_Highlights/New-Zealand-Fine-Art-Wedding-Photography-on-Film-by-Erich-McVey-43.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Adele%20and%20David/00_Highlights/New-Zealand-Fine-Art-Wedding-Photography-on-Film-by-Erich-McVey-43.jpg')
                Photo.create!(
                  subalbum_id: 7, date_taken: Time.now,
                  file_name: 'New-Zealand-Fine-Art-Wedding-Photography-on-Film-by-Erich-McVey-6.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Adele%20and%20David/00_Highlights/New-Zealand-Fine-Art-Wedding-Photography-on-Film-by-Erich-McVey-6.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Adele%20and%20David/00_Highlights/New-Zealand-Fine-Art-Wedding-Photography-on-Film-by-Erich-McVey-6.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Adele%20and%20David/00_Highlights/New-Zealand-Fine-Art-Wedding-Photography-on-Film-by-Erich-McVey-6.jpg')




                Photo.create!(
                  subalbum_id: 8, date_taken: Time.now,
                  file_name: 'New-Zealand-Fine-Art-Wedding-Photography-on-Film-by-Erich-McVey-10.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Adele%20and%20David/01_Preparation/New-Zealand-Fine-Art-Wedding-Photography-on-Film-by-Erich-McVey-10.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Adele%20and%20David/01_Preparation/New-Zealand-Fine-Art-Wedding-Photography-on-Film-by-Erich-McVey-10.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Adele%20and%20David/01_Preparation/New-Zealand-Fine-Art-Wedding-Photography-on-Film-by-Erich-McVey-10.jpg')
                Photo.create!(
                  subalbum_id: 8, date_taken: Time.now,
                  file_name: 'New-Zealand-Fine-Art-Wedding-Photography-on-Film-by-Erich-McVey-11.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Adele%20and%20David/01_Preparation/New-Zealand-Fine-Art-Wedding-Photography-on-Film-by-Erich-McVey-11.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Adele%20and%20David/01_Preparation/New-Zealand-Fine-Art-Wedding-Photography-on-Film-by-Erich-McVey-11.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Adele%20and%20David/01_Preparation/New-Zealand-Fine-Art-Wedding-Photography-on-Film-by-Erich-McVey-11.jpg')
                Photo.create!(
                  subalbum_id: 8, date_taken: Time.now,
                  file_name: 'New-Zealand-Fine-Art-Wedding-Photography-on-Film-by-Erich-McVey-12.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Adele%20and%20David/01_Preparation/New-Zealand-Fine-Art-Wedding-Photography-on-Film-by-Erich-McVey-12.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Adele%20and%20David/01_Preparation/New-Zealand-Fine-Art-Wedding-Photography-on-Film-by-Erich-McVey-12.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Adele%20and%20David/01_Preparation/New-Zealand-Fine-Art-Wedding-Photography-on-Film-by-Erich-McVey-12.jpg')
                Photo.create!(
                  subalbum_id: 8, date_taken: Time.now,
                  file_name: 'New-Zealand-Fine-Art-Wedding-Photography-on-Film-by-Erich-McVey-2.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Adele%20and%20David/01_Preparation/New-Zealand-Fine-Art-Wedding-Photography-on-Film-by-Erich-McVey-2.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Adele%20and%20David/01_Preparation/New-Zealand-Fine-Art-Wedding-Photography-on-Film-by-Erich-McVey-2.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Adele%20and%20David/01_Preparation/New-Zealand-Fine-Art-Wedding-Photography-on-Film-by-Erich-McVey-2.jpg')
                Photo.create!(
                  subalbum_id: 8, date_taken: Time.now,
                  file_name: 'New-Zealand-Fine-Art-Wedding-Photography-on-Film-by-Erich-McVey-3.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Adele%20and%20David/01_Preparation/New-Zealand-Fine-Art-Wedding-Photography-on-Film-by-Erich-McVey-3.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Adele%20and%20David/01_Preparation/New-Zealand-Fine-Art-Wedding-Photography-on-Film-by-Erich-McVey-3.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Adele%20and%20David/01_Preparation/New-Zealand-Fine-Art-Wedding-Photography-on-Film-by-Erich-McVey-3.jpg')
                Photo.create!(
                  subalbum_id: 8, date_taken: Time.now,
                  file_name: 'New-Zealand-Fine-Art-Wedding-Photography-on-Film-by-Erich-McVey-4.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Adele%20and%20David/01_Preparation/New-Zealand-Fine-Art-Wedding-Photography-on-Film-by-Erich-McVey-4.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Adele%20and%20David/01_Preparation/New-Zealand-Fine-Art-Wedding-Photography-on-Film-by-Erich-McVey-4.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Adele%20and%20David/01_Preparation/New-Zealand-Fine-Art-Wedding-Photography-on-Film-by-Erich-McVey-4.jpg')
                Photo.create!(
                  subalbum_id: 8, date_taken: Time.now,
                  file_name: 'New-Zealand-Fine-Art-Wedding-Photography-on-Film-by-Erich-McVey-5.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Adele%20and%20David/01_Preparation/New-Zealand-Fine-Art-Wedding-Photography-on-Film-by-Erich-McVey-5.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Adele%20and%20David/01_Preparation/New-Zealand-Fine-Art-Wedding-Photography-on-Film-by-Erich-McVey-5.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Adele%20and%20David/01_Preparation/New-Zealand-Fine-Art-Wedding-Photography-on-Film-by-Erich-McVey-5.jpg')
                Photo.create!(
                  subalbum_id: 8, date_taken: Time.now,
                  file_name: 'New-Zealand-Fine-Art-Wedding-Photography-on-Film-by-Erich-McVey-6.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Adele%20and%20David/01_Preparation/New-Zealand-Fine-Art-Wedding-Photography-on-Film-by-Erich-McVey-6.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Adele%20and%20David/01_Preparation/New-Zealand-Fine-Art-Wedding-Photography-on-Film-by-Erich-McVey-6.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Adele%20and%20David/01_Preparation/New-Zealand-Fine-Art-Wedding-Photography-on-Film-by-Erich-McVey-6.jpg')
                Photo.create!(
                  subalbum_id: 8, date_taken: Time.now,
                  file_name: 'New-Zealand-Fine-Art-Wedding-Photography-on-Film-by-Erich-McVey-8.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Adele%20and%20David/01_Preparation/New-Zealand-Fine-Art-Wedding-Photography-on-Film-by-Erich-McVey-8.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Adele%20and%20David/01_Preparation/New-Zealand-Fine-Art-Wedding-Photography-on-Film-by-Erich-McVey-8.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Adele%20and%20David/01_Preparation/New-Zealand-Fine-Art-Wedding-Photography-on-Film-by-Erich-McVey-8.jpg')
                Photo.create!(
                  subalbum_id: 8, date_taken: Time.now,
                  file_name: 'New-Zealand-Fine-Art-Wedding-Photography-on-Film-by-Erich-McVey-9.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Adele%20and%20David/01_Preparation/New-Zealand-Fine-Art-Wedding-Photography-on-Film-by-Erich-McVey-9.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Adele%20and%20David/01_Preparation/New-Zealand-Fine-Art-Wedding-Photography-on-Film-by-Erich-McVey-9.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Adele%20and%20David/01_Preparation/New-Zealand-Fine-Art-Wedding-Photography-on-Film-by-Erich-McVey-9.jpg')



                Photo.create!(
                  subalbum_id: 9, date_taken: Time.now,
                  file_name: 'New-Zealand-Fine-Art-Wedding-Photography-on-Film-by-Erich-McVey-13.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Adele%20and%20David/02_Portraits/New-Zealand-Fine-Art-Wedding-Photography-on-Film-by-Erich-McVey-13.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Adele%20and%20David/02_Portraits/New-Zealand-Fine-Art-Wedding-Photography-on-Film-by-Erich-McVey-13.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Adele%20and%20David/02_Portraits/New-Zealand-Fine-Art-Wedding-Photography-on-Film-by-Erich-McVey-13.jpg')
                Photo.create!(
                  subalbum_id: 9, date_taken: Time.now,
                  file_name: 'New-Zealand-Fine-Art-Wedding-Photography-on-Film-by-Erich-McVey-14.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Adele%20and%20David/02_Portraits/New-Zealand-Fine-Art-Wedding-Photography-on-Film-by-Erich-McVey-14.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Adele%20and%20David/02_Portraits/New-Zealand-Fine-Art-Wedding-Photography-on-Film-by-Erich-McVey-14.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Adele%20and%20David/02_Portraits/New-Zealand-Fine-Art-Wedding-Photography-on-Film-by-Erich-McVey-14.jpg')
                Photo.create!(
                  subalbum_id: 9, date_taken: Time.now,
                  file_name: 'New-Zealand-Fine-Art-Wedding-Photography-on-Film-by-Erich-McVey-15.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Adele%20and%20David/02_Portraits/New-Zealand-Fine-Art-Wedding-Photography-on-Film-by-Erich-McVey-15.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Adele%20and%20David/02_Portraits/New-Zealand-Fine-Art-Wedding-Photography-on-Film-by-Erich-McVey-15.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Adele%20and%20David/02_Portraits/New-Zealand-Fine-Art-Wedding-Photography-on-Film-by-Erich-McVey-15.jpg')
                Photo.create!(
                  subalbum_id: 9, date_taken: Time.now,
                  file_name: 'New-Zealand-Fine-Art-Wedding-Photography-on-Film-by-Erich-McVey-16.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Adele%20and%20David/02_Portraits/New-Zealand-Fine-Art-Wedding-Photography-on-Film-by-Erich-McVey-16.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Adele%20and%20David/02_Portraits/New-Zealand-Fine-Art-Wedding-Photography-on-Film-by-Erich-McVey-16.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Adele%20and%20David/02_Portraits/New-Zealand-Fine-Art-Wedding-Photography-on-Film-by-Erich-McVey-16.jpg')
                Photo.create!(
                  subalbum_id: 9, date_taken: Time.now,
                  file_name: 'New-Zealand-Fine-Art-Wedding-Photography-on-Film-by-Erich-McVey-17.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Adele%20and%20David/02_Portraits/New-Zealand-Fine-Art-Wedding-Photography-on-Film-by-Erich-McVey-17.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Adele%20and%20David/02_Portraits/New-Zealand-Fine-Art-Wedding-Photography-on-Film-by-Erich-McVey-17.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Adele%20and%20David/02_Portraits/New-Zealand-Fine-Art-Wedding-Photography-on-Film-by-Erich-McVey-17.jpg')
                Photo.create!(
                  subalbum_id: 9, date_taken: Time.now,
                  file_name: 'New-Zealand-Fine-Art-Wedding-Photography-on-Film-by-Erich-McVey-18.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Adele%20and%20David/02_Portraits/New-Zealand-Fine-Art-Wedding-Photography-on-Film-by-Erich-McVey-18.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Adele%20and%20David/02_Portraits/New-Zealand-Fine-Art-Wedding-Photography-on-Film-by-Erich-McVey-18.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Adele%20and%20David/02_Portraits/New-Zealand-Fine-Art-Wedding-Photography-on-Film-by-Erich-McVey-18.jpg')
                Photo.create!(
                  subalbum_id: 9, date_taken: Time.now,
                  file_name: 'New-Zealand-Fine-Art-Wedding-Photography-on-Film-by-Erich-McVey-19.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Adele%20and%20David/02_Portraits/New-Zealand-Fine-Art-Wedding-Photography-on-Film-by-Erich-McVey-19.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Adele%20and%20David/02_Portraits/New-Zealand-Fine-Art-Wedding-Photography-on-Film-by-Erich-McVey-19.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Adele%20and%20David/02_Portraits/New-Zealand-Fine-Art-Wedding-Photography-on-Film-by-Erich-McVey-19.jpg')
                Photo.create!(
                  subalbum_id: 9, date_taken: Time.now,
                  file_name: 'New-Zealand-Fine-Art-Wedding-Photography-on-Film-by-Erich-McVey-20.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Adele%20and%20David/02_Portraits/New-Zealand-Fine-Art-Wedding-Photography-on-Film-by-Erich-McVey-20.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Adele%20and%20David/02_Portraits/New-Zealand-Fine-Art-Wedding-Photography-on-Film-by-Erich-McVey-20.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Adele%20and%20David/02_Portraits/New-Zealand-Fine-Art-Wedding-Photography-on-Film-by-Erich-McVey-20.jpg')
                Photo.create!(
                  subalbum_id: 9, date_taken: Time.now,
                  file_name: 'New-Zealand-Fine-Art-Wedding-Photography-on-Film-by-Erich-McVey-21.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Adele%20and%20David/02_Portraits/New-Zealand-Fine-Art-Wedding-Photography-on-Film-by-Erich-McVey-21.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Adele%20and%20David/02_Portraits/New-Zealand-Fine-Art-Wedding-Photography-on-Film-by-Erich-McVey-21.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Adele%20and%20David/02_Portraits/New-Zealand-Fine-Art-Wedding-Photography-on-Film-by-Erich-McVey-21.jpg')
                Photo.create!(
                  subalbum_id: 9, date_taken: Time.now,
                  file_name: 'New-Zealand-Fine-Art-Wedding-Photography-on-Film-by-Erich-McVey-22.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Adele%20and%20David/02_Portraits/New-Zealand-Fine-Art-Wedding-Photography-on-Film-by-Erich-McVey-22.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Adele%20and%20David/02_Portraits/New-Zealand-Fine-Art-Wedding-Photography-on-Film-by-Erich-McVey-22.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Adele%20and%20David/02_Portraits/New-Zealand-Fine-Art-Wedding-Photography-on-Film-by-Erich-McVey-22.jpg')
                Photo.create!(
                  subalbum_id: 9, date_taken: Time.now,
                  file_name: 'New-Zealand-Fine-Art-Wedding-Photography-on-Film-by-Erich-McVey-23.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Adele%20and%20David/02_Portraits/New-Zealand-Fine-Art-Wedding-Photography-on-Film-by-Erich-McVey-23.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Adele%20and%20David/02_Portraits/New-Zealand-Fine-Art-Wedding-Photography-on-Film-by-Erich-McVey-23.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Adele%20and%20David/02_Portraits/New-Zealand-Fine-Art-Wedding-Photography-on-Film-by-Erich-McVey-23.jpg')
                Photo.create!(
                  subalbum_id: 9, date_taken: Time.now,
                  file_name: 'New-Zealand-Fine-Art-Wedding-Photography-on-Film-by-Erich-McVey-24.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Adele%20and%20David/02_Portraits/New-Zealand-Fine-Art-Wedding-Photography-on-Film-by-Erich-McVey-24.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Adele%20and%20David/02_Portraits/New-Zealand-Fine-Art-Wedding-Photography-on-Film-by-Erich-McVey-24.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Adele%20and%20David/02_Portraits/New-Zealand-Fine-Art-Wedding-Photography-on-Film-by-Erich-McVey-24.jpg')
                Photo.create!(
                  subalbum_id: 9, date_taken: Time.now,
                  file_name: 'New-Zealand-Fine-Art-Wedding-Photography-on-Film-by-Erich-McVey-25.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Adele%20and%20David/02_Portraits/New-Zealand-Fine-Art-Wedding-Photography-on-Film-by-Erich-McVey-25.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Adele%20and%20David/02_Portraits/New-Zealand-Fine-Art-Wedding-Photography-on-Film-by-Erich-McVey-25.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Adele%20and%20David/02_Portraits/New-Zealand-Fine-Art-Wedding-Photography-on-Film-by-Erich-McVey-25.jpg')
                Photo.create!(
                  subalbum_id: 9, date_taken: Time.now,
                  file_name: 'New-Zealand-Fine-Art-Wedding-Photography-on-Film-by-Erich-McVey-26.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Adele%20and%20David/02_Portraits/New-Zealand-Fine-Art-Wedding-Photography-on-Film-by-Erich-McVey-26.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Adele%20and%20David/02_Portraits/New-Zealand-Fine-Art-Wedding-Photography-on-Film-by-Erich-McVey-26.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Adele%20and%20David/02_Portraits/New-Zealand-Fine-Art-Wedding-Photography-on-Film-by-Erich-McVey-26.jpg')
                Photo.create!(
                  subalbum_id: 9, date_taken: Time.now,
                  file_name: 'New-Zealand-Fine-Art-Wedding-Photography-on-Film-by-Erich-McVey-27.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Adele%20and%20David/02_Portraits/New-Zealand-Fine-Art-Wedding-Photography-on-Film-by-Erich-McVey-27.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Adele%20and%20David/02_Portraits/New-Zealand-Fine-Art-Wedding-Photography-on-Film-by-Erich-McVey-27.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Adele%20and%20David/02_Portraits/New-Zealand-Fine-Art-Wedding-Photography-on-Film-by-Erich-McVey-27.jpg')
                Photo.create!(
                  subalbum_id: 9, date_taken: Time.now,
                  file_name: 'New-Zealand-Fine-Art-Wedding-Photography-on-Film-by-Erich-McVey-28.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Adele%20and%20David/02_Portraits/New-Zealand-Fine-Art-Wedding-Photography-on-Film-by-Erich-McVey-28.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Adele%20and%20David/02_Portraits/New-Zealand-Fine-Art-Wedding-Photography-on-Film-by-Erich-McVey-28.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Adele%20and%20David/02_Portraits/New-Zealand-Fine-Art-Wedding-Photography-on-Film-by-Erich-McVey-28.jpg')
                Photo.create!(
                  subalbum_id: 9, date_taken: Time.now,
                  file_name: 'New-Zealand-Fine-Art-Wedding-Photography-on-Film-by-Erich-McVey-29.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Adele%20and%20David/02_Portraits/New-Zealand-Fine-Art-Wedding-Photography-on-Film-by-Erich-McVey-29.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Adele%20and%20David/02_Portraits/New-Zealand-Fine-Art-Wedding-Photography-on-Film-by-Erich-McVey-29.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Adele%20and%20David/02_Portraits/New-Zealand-Fine-Art-Wedding-Photography-on-Film-by-Erich-McVey-29.jpg')
                Photo.create!(
                  subalbum_id: 9, date_taken: Time.now,
                  file_name: 'New-Zealand-Fine-Art-Wedding-Photography-on-Film-by-Erich-McVey-30.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Adele%20and%20David/02_Portraits/New-Zealand-Fine-Art-Wedding-Photography-on-Film-by-Erich-McVey-30.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Adele%20and%20David/02_Portraits/New-Zealand-Fine-Art-Wedding-Photography-on-Film-by-Erich-McVey-30.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Adele%20and%20David/02_Portraits/New-Zealand-Fine-Art-Wedding-Photography-on-Film-by-Erich-McVey-30.jpg')
                Photo.create!(
                  subalbum_id: 9, date_taken: Time.now,
                  file_name: 'New-Zealand-Fine-Art-Wedding-Photography-on-Film-by-Erich-McVey-31.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Adele%20and%20David/02_Portraits/New-Zealand-Fine-Art-Wedding-Photography-on-Film-by-Erich-McVey-31.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Adele%20and%20David/02_Portraits/New-Zealand-Fine-Art-Wedding-Photography-on-Film-by-Erich-McVey-31.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Adele%20and%20David/02_Portraits/New-Zealand-Fine-Art-Wedding-Photography-on-Film-by-Erich-McVey-31.jpg')
                Photo.create!(
                  subalbum_id: 9, date_taken: Time.now,
                  file_name: 'New-Zealand-Fine-Art-Wedding-Photography-on-Film-by-Erich-McVey-32.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Adele%20and%20David/02_Portraits/New-Zealand-Fine-Art-Wedding-Photography-on-Film-by-Erich-McVey-32.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Adele%20and%20David/02_Portraits/New-Zealand-Fine-Art-Wedding-Photography-on-Film-by-Erich-McVey-32.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Adele%20and%20David/02_Portraits/New-Zealand-Fine-Art-Wedding-Photography-on-Film-by-Erich-McVey-32.jpg')
                Photo.create!(
                  subalbum_id: 9, date_taken: Time.now,
                  file_name: 'New-Zealand-Fine-Art-Wedding-Photography-on-Film-by-Erich-McVey-33.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Adele%20and%20David/02_Portraits/New-Zealand-Fine-Art-Wedding-Photography-on-Film-by-Erich-McVey-33.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Adele%20and%20David/02_Portraits/New-Zealand-Fine-Art-Wedding-Photography-on-Film-by-Erich-McVey-33.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Adele%20and%20David/02_Portraits/New-Zealand-Fine-Art-Wedding-Photography-on-Film-by-Erich-McVey-33.jpg')
                Photo.create!(
                  subalbum_id: 9, date_taken: Time.now,
                  file_name: 'New-Zealand-Fine-Art-Wedding-Photography-on-Film-by-Erich-McVey-34.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Adele%20and%20David/02_Portraits/New-Zealand-Fine-Art-Wedding-Photography-on-Film-by-Erich-McVey-34.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Adele%20and%20David/02_Portraits/New-Zealand-Fine-Art-Wedding-Photography-on-Film-by-Erich-McVey-34.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Adele%20and%20David/02_Portraits/New-Zealand-Fine-Art-Wedding-Photography-on-Film-by-Erich-McVey-34.jpg')
                Photo.create!(
                  subalbum_id: 9, date_taken: Time.now,
                  file_name: 'New-Zealand-Fine-Art-Wedding-Photography-on-Film-by-Erich-McVey-35.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Adele%20and%20David/02_Portraits/New-Zealand-Fine-Art-Wedding-Photography-on-Film-by-Erich-McVey-35.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Adele%20and%20David/02_Portraits/New-Zealand-Fine-Art-Wedding-Photography-on-Film-by-Erich-McVey-35.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Adele%20and%20David/02_Portraits/New-Zealand-Fine-Art-Wedding-Photography-on-Film-by-Erich-McVey-35.jpg')
                Photo.create!(
                  subalbum_id: 9, date_taken: Time.now,
                  file_name: 'New-Zealand-Fine-Art-Wedding-Photography-on-Film-by-Erich-McVey-36.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Adele%20and%20David/02_Portraits/New-Zealand-Fine-Art-Wedding-Photography-on-Film-by-Erich-McVey-36.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Adele%20and%20David/02_Portraits/New-Zealand-Fine-Art-Wedding-Photography-on-Film-by-Erich-McVey-36.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Adele%20and%20David/02_Portraits/New-Zealand-Fine-Art-Wedding-Photography-on-Film-by-Erich-McVey-36.jpg')
                Photo.create!(
                  subalbum_id: 9, date_taken: Time.now,
                  file_name: 'New-Zealand-Fine-Art-Wedding-Photography-on-Film-by-Erich-McVey-37.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Adele%20and%20David/02_Portraits/New-Zealand-Fine-Art-Wedding-Photography-on-Film-by-Erich-McVey-37.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Adele%20and%20David/02_Portraits/New-Zealand-Fine-Art-Wedding-Photography-on-Film-by-Erich-McVey-37.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Adele%20and%20David/02_Portraits/New-Zealand-Fine-Art-Wedding-Photography-on-Film-by-Erich-McVey-37.jpg')
                Photo.create!(
                  subalbum_id: 9, date_taken: Time.now,
                  file_name: 'New-Zealand-Fine-Art-Wedding-Photography-on-Film-by-Erich-McVey-38.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Adele%20and%20David/02_Portraits/New-Zealand-Fine-Art-Wedding-Photography-on-Film-by-Erich-McVey-38.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Adele%20and%20David/02_Portraits/New-Zealand-Fine-Art-Wedding-Photography-on-Film-by-Erich-McVey-38.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Adele%20and%20David/02_Portraits/New-Zealand-Fine-Art-Wedding-Photography-on-Film-by-Erich-McVey-38.jpg')
                Photo.create!(
                  subalbum_id: 9, date_taken: Time.now,
                  file_name: 'New-Zealand-Fine-Art-Wedding-Photography-on-Film-by-Erich-McVey-39.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Adele%20and%20David/02_Portraits/New-Zealand-Fine-Art-Wedding-Photography-on-Film-by-Erich-McVey-39.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Adele%20and%20David/02_Portraits/New-Zealand-Fine-Art-Wedding-Photography-on-Film-by-Erich-McVey-39.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Adele%20and%20David/02_Portraits/New-Zealand-Fine-Art-Wedding-Photography-on-Film-by-Erich-McVey-39.jpg')
                Photo.create!(
                  subalbum_id: 9, date_taken: Time.now,
                  file_name: 'New-Zealand-Fine-Art-Wedding-Photography-on-Film-by-Erich-McVey-40.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Adele%20and%20David/02_Portraits/New-Zealand-Fine-Art-Wedding-Photography-on-Film-by-Erich-McVey-40.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Adele%20and%20David/02_Portraits/New-Zealand-Fine-Art-Wedding-Photography-on-Film-by-Erich-McVey-40.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Adele%20and%20David/02_Portraits/New-Zealand-Fine-Art-Wedding-Photography-on-Film-by-Erich-McVey-40.jpg')
                Photo.create!(
                  subalbum_id: 9, date_taken: Time.now,
                  file_name: 'New-Zealand-Fine-Art-Wedding-Photography-on-Film-by-Erich-McVey-41.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Adele%20and%20David/02_Portraits/New-Zealand-Fine-Art-Wedding-Photography-on-Film-by-Erich-McVey-41.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Adele%20and%20David/02_Portraits/New-Zealand-Fine-Art-Wedding-Photography-on-Film-by-Erich-McVey-41.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Adele%20and%20David/02_Portraits/New-Zealand-Fine-Art-Wedding-Photography-on-Film-by-Erich-McVey-41.jpg')
                Photo.create!(
                  subalbum_id: 9, date_taken: Time.now,
                  file_name: 'New-Zealand-Fine-Art-Wedding-Photography-on-Film-by-Erich-McVey-42.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Adele%20and%20David/02_Portraits/New-Zealand-Fine-Art-Wedding-Photography-on-Film-by-Erich-McVey-42.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Adele%20and%20David/02_Portraits/New-Zealand-Fine-Art-Wedding-Photography-on-Film-by-Erich-McVey-42.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Adele%20and%20David/02_Portraits/New-Zealand-Fine-Art-Wedding-Photography-on-Film-by-Erich-McVey-42.jpg')
                Photo.create!(
                  subalbum_id: 9, date_taken: Time.now,
                  file_name: 'New-Zealand-Fine-Art-Wedding-Photography-on-Film-by-Erich-McVey-43.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Adele%20and%20David/02_Portraits/New-Zealand-Fine-Art-Wedding-Photography-on-Film-by-Erich-McVey-43.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Adele%20and%20David/02_Portraits/New-Zealand-Fine-Art-Wedding-Photography-on-Film-by-Erich-McVey-43.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Adele%20and%20David/02_Portraits/New-Zealand-Fine-Art-Wedding-Photography-on-Film-by-Erich-McVey-43.jpg')
                Photo.create!(
                  subalbum_id: 9, date_taken: Time.now,
                  file_name: 'New-Zealand-Fine-Art-Wedding-Photography-on-Film-by-Erich-McVey-44.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Adele%20and%20David/02_Portraits/New-Zealand-Fine-Art-Wedding-Photography-on-Film-by-Erich-McVey-44.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Adele%20and%20David/02_Portraits/New-Zealand-Fine-Art-Wedding-Photography-on-Film-by-Erich-McVey-44.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Adele%20and%20David/02_Portraits/New-Zealand-Fine-Art-Wedding-Photography-on-Film-by-Erich-McVey-44.jpg')
                Photo.create!(
                  subalbum_id: 9, date_taken: Time.now,
                  file_name: 'New-Zealand-Fine-Art-Wedding-Photography-on-Film-by-Erich-McVey-45.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Adele%20and%20David/02_Portraits/New-Zealand-Fine-Art-Wedding-Photography-on-Film-by-Erich-McVey-45.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Adele%20and%20David/02_Portraits/New-Zealand-Fine-Art-Wedding-Photography-on-Film-by-Erich-McVey-45.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Adele%20and%20David/02_Portraits/New-Zealand-Fine-Art-Wedding-Photography-on-Film-by-Erich-McVey-45.jpg')
                Photo.create!(
                  subalbum_id: 9, date_taken: Time.now,
                  file_name: 'New-Zealand-Fine-Art-Wedding-Photography-on-Film-by-Erich-McVey-46.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Adele%20and%20David/02_Portraits/New-Zealand-Fine-Art-Wedding-Photography-on-Film-by-Erich-McVey-46.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Adele%20and%20David/02_Portraits/New-Zealand-Fine-Art-Wedding-Photography-on-Film-by-Erich-McVey-46.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Adele%20and%20David/02_Portraits/New-Zealand-Fine-Art-Wedding-Photography-on-Film-by-Erich-McVey-46.jpg')
                Photo.create!(
                  subalbum_id: 9, date_taken: Time.now,
                  file_name: 'New-Zealand-Fine-Art-Wedding-Photography-on-Film-by-Erich-McVey-47.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Adele%20and%20David/02_Portraits/New-Zealand-Fine-Art-Wedding-Photography-on-Film-by-Erich-McVey-47.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Adele%20and%20David/02_Portraits/New-Zealand-Fine-Art-Wedding-Photography-on-Film-by-Erich-McVey-47.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Adele%20and%20David/02_Portraits/New-Zealand-Fine-Art-Wedding-Photography-on-Film-by-Erich-McVey-47.jpg')


        Album.create!(title: "Baton Rogue", event_date: "2014-11-03 00:00:00 -0800", cover_image_id: 170, user_id: 1, status: 'Published') #Album4

        # Auto Highlights Subalbum10

                Photo.create!(
                  subalbum_id: 10, date_taken: Time.now,
                  file_name: 'Louisiana-Wedding-Photography-by-Erich-McVey-1.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Baton%20Rogue/Louisiana-Wedding-Photography-by-Erich-McVey-1.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Baton%20Rogue/Louisiana-Wedding-Photography-by-Erich-McVey-1.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Baton%20Rogue/Louisiana-Wedding-Photography-by-Erich-McVey-1.jpg')
                Photo.create!(
                  subalbum_id: 10, date_taken: Time.now,
                  file_name: 'Louisiana-Wedding-Photography-by-Erich-McVey-10.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Baton%20Rogue/Louisiana-Wedding-Photography-by-Erich-McVey-10.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Baton%20Rogue/Louisiana-Wedding-Photography-by-Erich-McVey-10.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Baton%20Rogue/Louisiana-Wedding-Photography-by-Erich-McVey-10.jpg')
                Photo.create!(
                  subalbum_id: 10, date_taken: Time.now,
                  file_name: 'Louisiana-Wedding-Photography-by-Erich-McVey-11.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Baton%20Rogue/Louisiana-Wedding-Photography-by-Erich-McVey-11.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Baton%20Rogue/Louisiana-Wedding-Photography-by-Erich-McVey-11.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Baton%20Rogue/Louisiana-Wedding-Photography-by-Erich-McVey-11.jpg')
                Photo.create!(
                  subalbum_id: 10, date_taken: Time.now,
                  file_name: 'Louisiana-Wedding-Photography-by-Erich-McVey-12.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Baton%20Rogue/Louisiana-Wedding-Photography-by-Erich-McVey-12.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Baton%20Rogue/Louisiana-Wedding-Photography-by-Erich-McVey-12.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Baton%20Rogue/Louisiana-Wedding-Photography-by-Erich-McVey-12.jpg')
                Photo.create!(
                  subalbum_id: 10, date_taken: Time.now,
                  file_name: 'Louisiana-Wedding-Photography-by-Erich-McVey-13.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Baton%20Rogue/Louisiana-Wedding-Photography-by-Erich-McVey-13.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Baton%20Rogue/Louisiana-Wedding-Photography-by-Erich-McVey-13.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Baton%20Rogue/Louisiana-Wedding-Photography-by-Erich-McVey-13.jpg')
                Photo.create!(
                  subalbum_id: 10, date_taken: Time.now,
                  file_name: 'Louisiana-Wedding-Photography-by-Erich-McVey-14.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Baton%20Rogue/Louisiana-Wedding-Photography-by-Erich-McVey-14.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Baton%20Rogue/Louisiana-Wedding-Photography-by-Erich-McVey-14.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Baton%20Rogue/Louisiana-Wedding-Photography-by-Erich-McVey-14.jpg')
                Photo.create!(
                  subalbum_id: 10, date_taken: Time.now,
                  file_name: 'Louisiana-Wedding-Photography-by-Erich-McVey-15.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Baton%20Rogue/Louisiana-Wedding-Photography-by-Erich-McVey-15.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Baton%20Rogue/Louisiana-Wedding-Photography-by-Erich-McVey-15.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Baton%20Rogue/Louisiana-Wedding-Photography-by-Erich-McVey-15.jpg')
                Photo.create!(
                  subalbum_id: 10, date_taken: Time.now,
                  file_name: 'Louisiana-Wedding-Photography-by-Erich-McVey-16.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Baton%20Rogue/Louisiana-Wedding-Photography-by-Erich-McVey-16.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Baton%20Rogue/Louisiana-Wedding-Photography-by-Erich-McVey-16.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Baton%20Rogue/Louisiana-Wedding-Photography-by-Erich-McVey-16.jpg')
                Photo.create!(
                  subalbum_id: 10, date_taken: Time.now,
                  file_name: 'Louisiana-Wedding-Photography-by-Erich-McVey-17.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Baton%20Rogue/Louisiana-Wedding-Photography-by-Erich-McVey-17.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Baton%20Rogue/Louisiana-Wedding-Photography-by-Erich-McVey-17.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Baton%20Rogue/Louisiana-Wedding-Photography-by-Erich-McVey-17.jpg')
                Photo.create!(
                  subalbum_id: 10, date_taken: Time.now,
                  file_name: 'Louisiana-Wedding-Photography-by-Erich-McVey-18.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Baton%20Rogue/Louisiana-Wedding-Photography-by-Erich-McVey-18.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Baton%20Rogue/Louisiana-Wedding-Photography-by-Erich-McVey-18.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Baton%20Rogue/Louisiana-Wedding-Photography-by-Erich-McVey-18.jpg')
                Photo.create!(
                  subalbum_id: 10, date_taken: Time.now,
                  file_name: 'Louisiana-Wedding-Photography-by-Erich-McVey-19.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Baton%20Rogue/Louisiana-Wedding-Photography-by-Erich-McVey-19.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Baton%20Rogue/Louisiana-Wedding-Photography-by-Erich-McVey-19.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Baton%20Rogue/Louisiana-Wedding-Photography-by-Erich-McVey-19.jpg')
                Photo.create!(
                  subalbum_id: 10, date_taken: Time.now,
                  file_name: 'Louisiana-Wedding-Photography-by-Erich-McVey-2.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Baton%20Rogue/Louisiana-Wedding-Photography-by-Erich-McVey-2.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Baton%20Rogue/Louisiana-Wedding-Photography-by-Erich-McVey-2.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Baton%20Rogue/Louisiana-Wedding-Photography-by-Erich-McVey-2.jpg')
                Photo.create!(
                  subalbum_id: 10, date_taken: Time.now,
                  file_name: 'Louisiana-Wedding-Photography-by-Erich-McVey-20.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Baton%20Rogue/Louisiana-Wedding-Photography-by-Erich-McVey-20.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Baton%20Rogue/Louisiana-Wedding-Photography-by-Erich-McVey-20.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Baton%20Rogue/Louisiana-Wedding-Photography-by-Erich-McVey-20.jpg')
                Photo.create!(
                  subalbum_id: 10, date_taken: Time.now,
                  file_name: 'Louisiana-Wedding-Photography-by-Erich-McVey-3.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Baton%20Rogue/Louisiana-Wedding-Photography-by-Erich-McVey-3.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Baton%20Rogue/Louisiana-Wedding-Photography-by-Erich-McVey-3.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Baton%20Rogue/Louisiana-Wedding-Photography-by-Erich-McVey-3.jpg')
                Photo.create!(
                  subalbum_id: 10, date_taken: Time.now,
                  file_name: 'Louisiana-Wedding-Photography-by-Erich-McVey-4.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Baton%20Rogue/Louisiana-Wedding-Photography-by-Erich-McVey-4.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Baton%20Rogue/Louisiana-Wedding-Photography-by-Erich-McVey-4.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Baton%20Rogue/Louisiana-Wedding-Photography-by-Erich-McVey-4.jpg')
                Photo.create!(
                  subalbum_id: 10, date_taken: Time.now,
                  file_name: 'Louisiana-Wedding-Photography-by-Erich-McVey-5.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Baton%20Rogue/Louisiana-Wedding-Photography-by-Erich-McVey-5.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Baton%20Rogue/Louisiana-Wedding-Photography-by-Erich-McVey-5.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Baton%20Rogue/Louisiana-Wedding-Photography-by-Erich-McVey-5.jpg')
                Photo.create!(
                  subalbum_id: 10, date_taken: Time.now,
                  file_name: 'Louisiana-Wedding-Photography-by-Erich-McVey-6.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Baton%20Rogue/Louisiana-Wedding-Photography-by-Erich-McVey-6.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Baton%20Rogue/Louisiana-Wedding-Photography-by-Erich-McVey-6.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Baton%20Rogue/Louisiana-Wedding-Photography-by-Erich-McVey-6.jpg')
                Photo.create!(
                  subalbum_id: 10, date_taken: Time.now,
                  file_name: 'Louisiana-Wedding-Photography-by-Erich-McVey-7.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Baton%20Rogue/Louisiana-Wedding-Photography-by-Erich-McVey-7.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Baton%20Rogue/Louisiana-Wedding-Photography-by-Erich-McVey-7.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Baton%20Rogue/Louisiana-Wedding-Photography-by-Erich-McVey-7.jpg')
                Photo.create!(
                  subalbum_id: 10, date_taken: Time.now,
                  file_name: 'Louisiana-Wedding-Photography-by-Erich-McVey-8.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Baton%20Rogue/Louisiana-Wedding-Photography-by-Erich-McVey-8.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Baton%20Rogue/Louisiana-Wedding-Photography-by-Erich-McVey-8.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Baton%20Rogue/Louisiana-Wedding-Photography-by-Erich-McVey-8.jpg')
                Photo.create!(
                  subalbum_id: 10, date_taken: Time.now,
                  file_name: 'Louisiana-Wedding-Photography-by-Erich-McVey-9.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Baton%20Rogue/Louisiana-Wedding-Photography-by-Erich-McVey-9.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Baton%20Rogue/Louisiana-Wedding-Photography-by-Erich-McVey-9.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Erich%20Mcvey/Baton%20Rogue/Louisiana-Wedding-Photography-by-Erich-McVey-9.jpg')


User.create!(email: "info@ktmerry.com", password: "password", business_name: "KT Merry", website: "https://www.ktmerry.com") # User2
        Album.create!(title: "Islamorada Engagement", event_date: "2015-06-10 00:00:00 -0800", cover_image_id: 179, user_id: 2, status: 'Published') # Album6

                # Auto Highlights Subalbum #11
                Photo.create!(
                  subalbum_id: 11, date_taken: Time.now,
                  file_name: '2015_03_23_womenseditorial_0030.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/KT%20Merry/Islamorada%20Engagement%20June%2010/2015_03_23_womenseditorial_0030.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/KT%20Merry/Islamorada%20Engagement%20June%2010/2015_03_23_womenseditorial_0030.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/KT%20Merry/Islamorada%20Engagement%20June%2010/2015_03_23_womenseditorial_0030.jpg')
                Photo.create!(
                  subalbum_id: 11, date_taken: Time.now,
                  file_name: '2015_03_23_womenseditorial_0039.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/KT%20Merry/Islamorada%20Engagement%20June%2010/2015_03_23_womenseditorial_0039.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/KT%20Merry/Islamorada%20Engagement%20June%2010/2015_03_23_womenseditorial_0039.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/KT%20Merry/Islamorada%20Engagement%20June%2010/2015_03_23_womenseditorial_0039.jpg')
                Photo.create!(
                  subalbum_id: 11, date_taken: Time.now,
                  file_name: '2015_03_23_womenseditorial_00471.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/KT%20Merry/Islamorada%20Engagement%20June%2010/2015_03_23_womenseditorial_00471.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/KT%20Merry/Islamorada%20Engagement%20June%2010/2015_03_23_womenseditorial_00471.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/KT%20Merry/Islamorada%20Engagement%20June%2010/2015_03_23_womenseditorial_00471.jpg')
                Photo.create!(
                  subalbum_id: 11, date_taken: Time.now,
                  file_name: '2015_03_23_womenseditorial_00501.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/KT%20Merry/Islamorada%20Engagement%20June%2010/2015_03_23_womenseditorial_00501.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/KT%20Merry/Islamorada%20Engagement%20June%2010/2015_03_23_womenseditorial_00501.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/KT%20Merry/Islamorada%20Engagement%20June%2010/2015_03_23_womenseditorial_00501.jpg')
                Photo.create!(
                  subalbum_id: 11, date_taken: Time.now,
                  file_name: '2015_03_23_womenseditorial_00551.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/KT%20Merry/Islamorada%20Engagement%20June%2010/2015_03_23_womenseditorial_00551.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/KT%20Merry/Islamorada%20Engagement%20June%2010/2015_03_23_womenseditorial_00551.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/KT%20Merry/Islamorada%20Engagement%20June%2010/2015_03_23_womenseditorial_00551.jpg')
                Photo.create!(
                  subalbum_id: 11, date_taken: Time.now,
                  file_name: '2015_03_23_womenseditorial_0058.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/KT%20Merry/Islamorada%20Engagement%20June%2010/2015_03_23_womenseditorial_0058.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/KT%20Merry/Islamorada%20Engagement%20June%2010/2015_03_23_womenseditorial_0058.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/KT%20Merry/Islamorada%20Engagement%20June%2010/2015_03_23_womenseditorial_0058.jpg')
                Photo.create!(
                  subalbum_id: 11, date_taken: Time.now,
                  file_name: '2015_03_23_womenseditorial_0059.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/KT%20Merry/Islamorada%20Engagement%20June%2010/2015_03_23_womenseditorial_0059.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/KT%20Merry/Islamorada%20Engagement%20June%2010/2015_03_23_womenseditorial_0059.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/KT%20Merry/Islamorada%20Engagement%20June%2010/2015_03_23_womenseditorial_0059.jpg')
                Photo.create!(
                  subalbum_id: 11, date_taken: Time.now,
                  file_name: '2015_03_23_womenseditorial_00601.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/KT%20Merry/Islamorada%20Engagement%20June%2010/2015_03_23_womenseditorial_00601.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/KT%20Merry/Islamorada%20Engagement%20June%2010/2015_03_23_womenseditorial_00601.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/KT%20Merry/Islamorada%20Engagement%20June%2010/2015_03_23_womenseditorial_00601.jpg')
                Photo.create!(
                  subalbum_id: 11, date_taken: Time.now,
                  file_name: '2015_03_23_womenseditorial_00631.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/KT%20Merry/Islamorada%20Engagement%20June%2010/2015_03_23_womenseditorial_00631.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/KT%20Merry/Islamorada%20Engagement%20June%2010/2015_03_23_womenseditorial_00631.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/KT%20Merry/Islamorada%20Engagement%20June%2010/2015_03_23_womenseditorial_00631.jpg')
                Photo.create!(
                  subalbum_id: 11, date_taken: Time.now,
                  file_name: '2015_03_23_womenseditorial_0064.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/KT%20Merry/Islamorada%20Engagement%20June%2010/2015_03_23_womenseditorial_0064.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/KT%20Merry/Islamorada%20Engagement%20June%2010/2015_03_23_womenseditorial_0064.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/KT%20Merry/Islamorada%20Engagement%20June%2010/2015_03_23_womenseditorial_0064.jpg')
                Photo.create!(
                  subalbum_id: 11, date_taken: Time.now,
                  file_name: '2015_03_23_womenseditorial_00761.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/KT%20Merry/Islamorada%20Engagement%20June%2010/2015_03_23_womenseditorial_00761.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/KT%20Merry/Islamorada%20Engagement%20June%2010/2015_03_23_womenseditorial_00761.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/KT%20Merry/Islamorada%20Engagement%20June%2010/2015_03_23_womenseditorial_00761.jpg')
                Photo.create!(
                  subalbum_id: 11, date_taken: Time.now,
                  file_name: '2015_03_23_womenseditorial_00841.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/KT%20Merry/Islamorada%20Engagement%20June%2010/2015_03_23_womenseditorial_00841.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/KT%20Merry/Islamorada%20Engagement%20June%2010/2015_03_23_womenseditorial_00841.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/KT%20Merry/Islamorada%20Engagement%20June%2010/2015_03_23_womenseditorial_00841.jpg')
                Photo.create!(
                  subalbum_id: 11, date_taken: Time.now,
                  file_name: '2015_03_23_womenseditorial_00901.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/KT%20Merry/Islamorada%20Engagement%20June%2010/2015_03_23_womenseditorial_00901.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/KT%20Merry/Islamorada%20Engagement%20June%2010/2015_03_23_womenseditorial_00901.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/KT%20Merry/Islamorada%20Engagement%20June%2010/2015_03_23_womenseditorial_00901.jpg')
                Photo.create!(
                  subalbum_id: 11, date_taken: Time.now,
                  file_name: '2015_03_23_womenseditorial_0103.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/KT%20Merry/Islamorada%20Engagement%20June%2010/2015_03_23_womenseditorial_0103.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/KT%20Merry/Islamorada%20Engagement%20June%2010/2015_03_23_womenseditorial_0103.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/KT%20Merry/Islamorada%20Engagement%20June%2010/2015_03_23_womenseditorial_0103.jpg')
                Photo.create!(
                  subalbum_id: 11, date_taken: Time.now,
                  file_name: '2015_03_23_womenseditorial_01041.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/KT%20Merry/Islamorada%20Engagement%20June%2010/2015_03_23_womenseditorial_01041.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/KT%20Merry/Islamorada%20Engagement%20June%2010/2015_03_23_womenseditorial_01041.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/KT%20Merry/Islamorada%20Engagement%20June%2010/2015_03_23_womenseditorial_01041.jpg')
                Photo.create!(
                  subalbum_id: 11, date_taken: Time.now,
                  file_name: '2015_03_23_womenseditorial_0110.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/KT%20Merry/Islamorada%20Engagement%20June%2010/2015_03_23_womenseditorial_0110.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/KT%20Merry/Islamorada%20Engagement%20June%2010/2015_03_23_womenseditorial_0110.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/KT%20Merry/Islamorada%20Engagement%20June%2010/2015_03_23_womenseditorial_0110.jpg')
                Photo.create!(
                  subalbum_id: 11, date_taken: Time.now,
                  file_name: '2015_03_23_womenseditorial_0115.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/KT%20Merry/Islamorada%20Engagement%20June%2010/2015_03_23_womenseditorial_0115.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/KT%20Merry/Islamorada%20Engagement%20June%2010/2015_03_23_womenseditorial_0115.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/KT%20Merry/Islamorada%20Engagement%20June%2010/2015_03_23_womenseditorial_0115.jpg')
                Photo.create!(
                  subalbum_id: 11, date_taken: Time.now,
                  file_name: '2015_03_23_womenseditorial_0125.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/KT%20Merry/Islamorada%20Engagement%20June%2010/2015_03_23_womenseditorial_0125.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/KT%20Merry/Islamorada%20Engagement%20June%2010/2015_03_23_womenseditorial_0125.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/KT%20Merry/Islamorada%20Engagement%20June%2010/2015_03_23_womenseditorial_0125.jpg')
                Photo.create!(
                  subalbum_id: 11, date_taken: Time.now,
                  file_name: '2015_03_23_womenseditorial_01261.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/KT%20Merry/Islamorada%20Engagement%20June%2010/2015_03_23_womenseditorial_01261.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/KT%20Merry/Islamorada%20Engagement%20June%2010/2015_03_23_womenseditorial_01261.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/KT%20Merry/Islamorada%20Engagement%20June%2010/2015_03_23_womenseditorial_01261.jpg')
                Photo.create!(
                  subalbum_id: 11, date_taken: Time.now,
                  file_name: '2015_03_23_womenseditorial_0128.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/KT%20Merry/Islamorada%20Engagement%20June%2010/2015_03_23_womenseditorial_0128.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/KT%20Merry/Islamorada%20Engagement%20June%2010/2015_03_23_womenseditorial_0128.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/KT%20Merry/Islamorada%20Engagement%20June%2010/2015_03_23_womenseditorial_0128.jpg')
                Photo.create!(
                  subalbum_id: 11, date_taken: Time.now,
                  file_name: '2015_03_23_womenseditorial_0130.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/KT%20Merry/Islamorada%20Engagement%20June%2010/2015_03_23_womenseditorial_0130.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/KT%20Merry/Islamorada%20Engagement%20June%2010/2015_03_23_womenseditorial_0130.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/KT%20Merry/Islamorada%20Engagement%20June%2010/2015_03_23_womenseditorial_0130.jpg')
                Photo.create!(
                  subalbum_id: 11, date_taken: Time.now,
                  file_name: '2015_03_23_womenseditorial_0136.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/KT%20Merry/Islamorada%20Engagement%20June%2010/2015_03_23_womenseditorial_0136.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/KT%20Merry/Islamorada%20Engagement%20June%2010/2015_03_23_womenseditorial_0136.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/KT%20Merry/Islamorada%20Engagement%20June%2010/2015_03_23_womenseditorial_0136.jpg')
                Photo.create!(
                  subalbum_id: 11, date_taken: Time.now,
                  file_name: '2015_03_23_womenseditorial_01421.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/KT%20Merry/Islamorada%20Engagement%20June%2010/2015_03_23_womenseditorial_01421.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/KT%20Merry/Islamorada%20Engagement%20June%2010/2015_03_23_womenseditorial_01421.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/KT%20Merry/Islamorada%20Engagement%20June%2010/2015_03_23_womenseditorial_01421.jpg')
                Photo.create!(
                  subalbum_id: 11, date_taken: Time.now,
                  file_name: '2015_03_23_womenseditorial_0144.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/KT%20Merry/Islamorada%20Engagement%20June%2010/2015_03_23_womenseditorial_0144.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/KT%20Merry/Islamorada%20Engagement%20June%2010/2015_03_23_womenseditorial_0144.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/KT%20Merry/Islamorada%20Engagement%20June%2010/2015_03_23_womenseditorial_0144.jpg')
                Photo.create!(
                  subalbum_id: 11, date_taken: Time.now,
                  file_name: '2015_03_23_womenseditorial_0145.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/KT%20Merry/Islamorada%20Engagement%20June%2010/2015_03_23_womenseditorial_0145.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/KT%20Merry/Islamorada%20Engagement%20June%2010/2015_03_23_womenseditorial_0145.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/KT%20Merry/Islamorada%20Engagement%20June%2010/2015_03_23_womenseditorial_0145.jpg')
                Photo.create!(
                  subalbum_id: 11, date_taken: Time.now,
                  file_name: '2015_03_23_womenseditorial_0167.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/KT%20Merry/Islamorada%20Engagement%20June%2010/2015_03_23_womenseditorial_0167.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/KT%20Merry/Islamorada%20Engagement%20June%2010/2015_03_23_womenseditorial_0167.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/KT%20Merry/Islamorada%20Engagement%20June%2010/2015_03_23_womenseditorial_0167.jpg')
                Photo.create!(
                  subalbum_id: 11, date_taken: Time.now,
                  file_name: '2015_03_23_womenseditorial_0170.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/KT%20Merry/Islamorada%20Engagement%20June%2010/2015_03_23_womenseditorial_0170.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/KT%20Merry/Islamorada%20Engagement%20June%2010/2015_03_23_womenseditorial_0170.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/KT%20Merry/Islamorada%20Engagement%20June%2010/2015_03_23_womenseditorial_0170.jpg')
                Photo.create!(
                  subalbum_id: 11, date_taken: Time.now,
                  file_name: '2015_03_23_womenseditorial_0172.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/KT%20Merry/Islamorada%20Engagement%20June%2010/2015_03_23_womenseditorial_0172.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/KT%20Merry/Islamorada%20Engagement%20June%2010/2015_03_23_womenseditorial_0172.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/KT%20Merry/Islamorada%20Engagement%20June%2010/2015_03_23_womenseditorial_0172.jpg')
                Photo.create!(
                  subalbum_id: 11, date_taken: Time.now,
                  file_name: '2015_03_23_womenseditorial_0180.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/KT%20Merry/Islamorada%20Engagement%20June%2010/2015_03_23_womenseditorial_0180.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/KT%20Merry/Islamorada%20Engagement%20June%2010/2015_03_23_womenseditorial_0180.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/KT%20Merry/Islamorada%20Engagement%20June%2010/2015_03_23_womenseditorial_0180.jpg')
                Photo.create!(
                  subalbum_id: 11, date_taken: Time.now,
                  file_name: '2015_03_23_womenseditorial_0182.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/KT%20Merry/Islamorada%20Engagement%20June%2010/2015_03_23_womenseditorial_0182.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/KT%20Merry/Islamorada%20Engagement%20June%2010/2015_03_23_womenseditorial_0182.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/KT%20Merry/Islamorada%20Engagement%20June%2010/2015_03_23_womenseditorial_0182.jpg')
                Photo.create!(
                  subalbum_id: 11, date_taken: Time.now,
                  file_name: '2015_03_23_womenseditorial_0188.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/KT%20Merry/Islamorada%20Engagement%20June%2010/2015_03_23_womenseditorial_0188.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/KT%20Merry/Islamorada%20Engagement%20June%2010/2015_03_23_womenseditorial_0188.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/KT%20Merry/Islamorada%20Engagement%20June%2010/2015_03_23_womenseditorial_0188.jpg')
                Photo.create!(
                  subalbum_id: 11, date_taken: Time.now,
                  file_name: '2015_03_23_womenseditorial_0189.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/KT%20Merry/Islamorada%20Engagement%20June%2010/2015_03_23_womenseditorial_0189.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/KT%20Merry/Islamorada%20Engagement%20June%2010/2015_03_23_womenseditorial_0189.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/KT%20Merry/Islamorada%20Engagement%20June%2010/2015_03_23_womenseditorial_0189.jpg')
                Photo.create!(
                  subalbum_id: 11, date_taken: Time.now,
                  file_name: '2015_03_23_womenseditorial_01961.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/KT%20Merry/Islamorada%20Engagement%20June%2010/2015_03_23_womenseditorial_01961.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/KT%20Merry/Islamorada%20Engagement%20June%2010/2015_03_23_womenseditorial_01961.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/KT%20Merry/Islamorada%20Engagement%20June%2010/2015_03_23_womenseditorial_01961.jpg')
                Photo.create!(
                  subalbum_id: 11, date_taken: Time.now,
                  file_name: '2015_03_23_womenseditorial_01981.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/KT%20Merry/Islamorada%20Engagement%20June%2010/2015_03_23_womenseditorial_01981.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/KT%20Merry/Islamorada%20Engagement%20June%2010/2015_03_23_womenseditorial_01981.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/KT%20Merry/Islamorada%20Engagement%20June%2010/2015_03_23_womenseditorial_01981.jpg')
                Photo.create!(
                  subalbum_id: 11, date_taken: Time.now,
                  file_name: '2015_03_23_womenseditorial_0212.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/KT%20Merry/Islamorada%20Engagement%20June%2010/2015_03_23_womenseditorial_0212.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/KT%20Merry/Islamorada%20Engagement%20June%2010/2015_03_23_womenseditorial_0212.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/KT%20Merry/Islamorada%20Engagement%20June%2010/2015_03_23_womenseditorial_0212.jpg')
                Photo.create!(
                  subalbum_id: 11, date_taken: Time.now,
                  file_name: '2015_03_23_womenseditorial_02191.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/KT%20Merry/Islamorada%20Engagement%20June%2010/2015_03_23_womenseditorial_02191.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/KT%20Merry/Islamorada%20Engagement%20June%2010/2015_03_23_womenseditorial_02191.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/KT%20Merry/Islamorada%20Engagement%20June%2010/2015_03_23_womenseditorial_02191.jpg')
                Photo.create!(
                  subalbum_id: 11, date_taken: Time.now,
                  file_name: '2015_03_23_womenseditorial_0228.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/KT%20Merry/Islamorada%20Engagement%20June%2010/2015_03_23_womenseditorial_0228.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/KT%20Merry/Islamorada%20Engagement%20June%2010/2015_03_23_womenseditorial_0228.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/KT%20Merry/Islamorada%20Engagement%20June%2010/2015_03_23_womenseditorial_0228.jpg')
                Photo.create!(
                  subalbum_id: 11, date_taken: Time.now,
                  file_name: '2015_03_23_womenseditorial_02401.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/KT%20Merry/Islamorada%20Engagement%20June%2010/2015_03_23_womenseditorial_02401.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/KT%20Merry/Islamorada%20Engagement%20June%2010/2015_03_23_womenseditorial_02401.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/KT%20Merry/Islamorada%20Engagement%20June%2010/2015_03_23_womenseditorial_02401.jpg')





        Album.create!(title: "Flutter Magazine", event_date: "2015-05-22 00:00:00 -0800", cover_image_id: 217, user_id: 2, status: 'Published') # Album7

                # Auto Highlights Subalbum #12

                Photo.create!(
                  subalbum_id: 12, date_taken: Time.now,
                  file_name: '2014_01_15_flutterastro_00181.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/KT%20Merry/Flutter%20Magazine%20May%2022/2014_01_15_flutterastro_00181.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/KT%20Merry/Flutter%20Magazine%20May%2022/2014_01_15_flutterastro_00181.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/KT%20Merry/Flutter%20Magazine%20May%2022/2014_01_15_flutterastro_00181.jpg')
                Photo.create!(
                  subalbum_id: 12, date_taken: Time.now,
                  file_name: '2014_01_15_flutterastro_00311.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/KT%20Merry/Flutter%20Magazine%20May%2022/2014_01_15_flutterastro_00311.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/KT%20Merry/Flutter%20Magazine%20May%2022/2014_01_15_flutterastro_00311.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/KT%20Merry/Flutter%20Magazine%20May%2022/2014_01_15_flutterastro_00311.jpg')
                Photo.create!(
                  subalbum_id: 12, date_taken: Time.now,
                  file_name: '2014_01_15_flutterastro_00381.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/KT%20Merry/Flutter%20Magazine%20May%2022/2014_01_15_flutterastro_00381.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/KT%20Merry/Flutter%20Magazine%20May%2022/2014_01_15_flutterastro_00381.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/KT%20Merry/Flutter%20Magazine%20May%2022/2014_01_15_flutterastro_00381.jpg')
                Photo.create!(
                  subalbum_id: 12, date_taken: Time.now,
                  file_name: '2014_01_15_flutterastro_0080.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/KT%20Merry/Flutter%20Magazine%20May%2022/2014_01_15_flutterastro_0080.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/KT%20Merry/Flutter%20Magazine%20May%2022/2014_01_15_flutterastro_0080.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/KT%20Merry/Flutter%20Magazine%20May%2022/2014_01_15_flutterastro_0080.jpg')
                Photo.create!(
                  subalbum_id: 12, date_taken: Time.now,
                  file_name: '2014_01_15_flutterastro_0106.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/KT%20Merry/Flutter%20Magazine%20May%2022/2014_01_15_flutterastro_0106.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/KT%20Merry/Flutter%20Magazine%20May%2022/2014_01_15_flutterastro_0106.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/KT%20Merry/Flutter%20Magazine%20May%2022/2014_01_15_flutterastro_0106.jpg')
                Photo.create!(
                  subalbum_id: 12, date_taken: Time.now,
                  file_name: '2014_01_15_flutterastro_0119.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/KT%20Merry/Flutter%20Magazine%20May%2022/2014_01_15_flutterastro_0119.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/KT%20Merry/Flutter%20Magazine%20May%2022/2014_01_15_flutterastro_0119.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/KT%20Merry/Flutter%20Magazine%20May%2022/2014_01_15_flutterastro_0119.jpg')
                Photo.create!(
                  subalbum_id: 12, date_taken: Time.now,
                  file_name: '2014_01_15_flutterastro_0123.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/KT%20Merry/Flutter%20Magazine%20May%2022/2014_01_15_flutterastro_0123.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/KT%20Merry/Flutter%20Magazine%20May%2022/2014_01_15_flutterastro_0123.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/KT%20Merry/Flutter%20Magazine%20May%2022/2014_01_15_flutterastro_0123.jpg')
                Photo.create!(
                  subalbum_id: 12, date_taken: Time.now,
                  file_name: '2014_01_15_flutterastro_0129.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/KT%20Merry/Flutter%20Magazine%20May%2022/2014_01_15_flutterastro_0129.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/KT%20Merry/Flutter%20Magazine%20May%2022/2014_01_15_flutterastro_0129.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/KT%20Merry/Flutter%20Magazine%20May%2022/2014_01_15_flutterastro_0129.jpg')
                Photo.create!(
                  subalbum_id: 12, date_taken: Time.now,
                  file_name: '2014_01_15_flutterastro_0134.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/KT%20Merry/Flutter%20Magazine%20May%2022/2014_01_15_flutterastro_0134.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/KT%20Merry/Flutter%20Magazine%20May%2022/2014_01_15_flutterastro_0134.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/KT%20Merry/Flutter%20Magazine%20May%2022/2014_01_15_flutterastro_0134.jpg')
                Photo.create!(
                  subalbum_id: 12, date_taken: Time.now,
                  file_name: '2014_01_15_flutterastro_01461.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/KT%20Merry/Flutter%20Magazine%20May%2022/2014_01_15_flutterastro_01461.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/KT%20Merry/Flutter%20Magazine%20May%2022/2014_01_15_flutterastro_01461.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/KT%20Merry/Flutter%20Magazine%20May%2022/2014_01_15_flutterastro_01461.jpg')
                Photo.create!(
                  subalbum_id: 12, date_taken: Time.now,
                  file_name: '2014_01_15_flutterastro_01601.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/KT%20Merry/Flutter%20Magazine%20May%2022/2014_01_15_flutterastro_01601.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/KT%20Merry/Flutter%20Magazine%20May%2022/2014_01_15_flutterastro_01601.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/KT%20Merry/Flutter%20Magazine%20May%2022/2014_01_15_flutterastro_01601.jpg')
                Photo.create!(
                  subalbum_id: 12, date_taken: Time.now,
                  file_name: '2014_01_15_flutterastro_01701.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/KT%20Merry/Flutter%20Magazine%20May%2022/2014_01_15_flutterastro_01701.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/KT%20Merry/Flutter%20Magazine%20May%2022/2014_01_15_flutterastro_01701.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/KT%20Merry/Flutter%20Magazine%20May%2022/2014_01_15_flutterastro_01701.jpg')
                Photo.create!(
                  subalbum_id: 12, date_taken: Time.now,
                  file_name: '2014_01_15_flutterastro_0178.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/KT%20Merry/Flutter%20Magazine%20May%2022/2014_01_15_flutterastro_0178.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/KT%20Merry/Flutter%20Magazine%20May%2022/2014_01_15_flutterastro_0178.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/KT%20Merry/Flutter%20Magazine%20May%2022/2014_01_15_flutterastro_0178.jpg')
                Photo.create!(
                  subalbum_id: 12, date_taken: Time.now,
                  file_name: '2014_01_15_flutterastro_0185.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/KT%20Merry/Flutter%20Magazine%20May%2022/2014_01_15_flutterastro_0185.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/KT%20Merry/Flutter%20Magazine%20May%2022/2014_01_15_flutterastro_0185.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/KT%20Merry/Flutter%20Magazine%20May%2022/2014_01_15_flutterastro_0185.jpg')
                Photo.create!(
                  subalbum_id: 12, date_taken: Time.now,
                  file_name: '2014_01_15_flutterastro_0204.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/KT%20Merry/Flutter%20Magazine%20May%2022/2014_01_15_flutterastro_0204.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/KT%20Merry/Flutter%20Magazine%20May%2022/2014_01_15_flutterastro_0204.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/KT%20Merry/Flutter%20Magazine%20May%2022/2014_01_15_flutterastro_0204.jpg')
                Photo.create!(
                  subalbum_id: 12, date_taken: Time.now,
                  file_name: '2014_01_15_flutterastro_02121.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/KT%20Merry/Flutter%20Magazine%20May%2022/2014_01_15_flutterastro_02121.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/KT%20Merry/Flutter%20Magazine%20May%2022/2014_01_15_flutterastro_02121.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/KT%20Merry/Flutter%20Magazine%20May%2022/2014_01_15_flutterastro_02121.jpg')
                Photo.create!(
                  subalbum_id: 12, date_taken: Time.now,
                  file_name: '2014_01_15_flutterastro_0257.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/KT%20Merry/Flutter%20Magazine%20May%2022/2014_01_15_flutterastro_0257.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/KT%20Merry/Flutter%20Magazine%20May%2022/2014_01_15_flutterastro_0257.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/KT%20Merry/Flutter%20Magazine%20May%2022/2014_01_15_flutterastro_0257.jpg')
                Photo.create!(
                  subalbum_id: 12, date_taken: Time.now,
                  file_name: '2014_01_15_flutterastro_0279.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/KT%20Merry/Flutter%20Magazine%20May%2022/2014_01_15_flutterastro_0279.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/KT%20Merry/Flutter%20Magazine%20May%2022/2014_01_15_flutterastro_0279.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/KT%20Merry/Flutter%20Magazine%20May%2022/2014_01_15_flutterastro_0279.jpg')
                Photo.create!(
                  subalbum_id: 12, date_taken: Time.now,
                  file_name: '2014_01_15_flutterastro_0288.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/KT%20Merry/Flutter%20Magazine%20May%2022/2014_01_15_flutterastro_0288.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/KT%20Merry/Flutter%20Magazine%20May%2022/2014_01_15_flutterastro_0288.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/KT%20Merry/Flutter%20Magazine%20May%2022/2014_01_15_flutterastro_0288.jpg')
                Photo.create!(
                  subalbum_id: 12, date_taken: Time.now,
                  file_name: '2014_01_15_flutterastro_0314.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/KT%20Merry/Flutter%20Magazine%20May%2022/2014_01_15_flutterastro_0314.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/KT%20Merry/Flutter%20Magazine%20May%2022/2014_01_15_flutterastro_0314.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/KT%20Merry/Flutter%20Magazine%20May%2022/2014_01_15_flutterastro_0314.jpg')
                Photo.create!(
                  subalbum_id: 12, date_taken: Time.now,
                  file_name: '2014_01_15_flutterastro_03241.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/KT%20Merry/Flutter%20Magazine%20May%2022/2014_01_15_flutterastro_03241.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/KT%20Merry/Flutter%20Magazine%20May%2022/2014_01_15_flutterastro_03241.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/KT%20Merry/Flutter%20Magazine%20May%2022/2014_01_15_flutterastro_03241.jpg')
                Photo.create!(
                  subalbum_id: 12, date_taken: Time.now,
                  file_name: '2014_01_15_flutterastro_0327.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/KT%20Merry/Flutter%20Magazine%20May%2022/2014_01_15_flutterastro_0327.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/KT%20Merry/Flutter%20Magazine%20May%2022/2014_01_15_flutterastro_0327.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/KT%20Merry/Flutter%20Magazine%20May%2022/2014_01_15_flutterastro_0327.jpg')
                Photo.create!(
                  subalbum_id: 12, date_taken: Time.now,
                  file_name: '2014_01_15_flutterastro_0338.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/KT%20Merry/Flutter%20Magazine%20May%2022/2014_01_15_flutterastro_0338.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/KT%20Merry/Flutter%20Magazine%20May%2022/2014_01_15_flutterastro_0338.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/KT%20Merry/Flutter%20Magazine%20May%2022/2014_01_15_flutterastro_0338.jpg')
                Photo.create!(
                  subalbum_id: 12, date_taken: Time.now,
                  file_name: '2014_01_15_flutterastro_0346.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/KT%20Merry/Flutter%20Magazine%20May%2022/2014_01_15_flutterastro_0346.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/KT%20Merry/Flutter%20Magazine%20May%2022/2014_01_15_flutterastro_0346.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/KT%20Merry/Flutter%20Magazine%20May%2022/2014_01_15_flutterastro_0346.jpg')
                Photo.create!(
                  subalbum_id: 12, date_taken: Time.now,
                  file_name: '2014_01_15_flutterastro_0359.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/KT%20Merry/Flutter%20Magazine%20May%2022/2014_01_15_flutterastro_0359.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/KT%20Merry/Flutter%20Magazine%20May%2022/2014_01_15_flutterastro_0359.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/KT%20Merry/Flutter%20Magazine%20May%2022/2014_01_15_flutterastro_0359.jpg')
                Photo.create!(
                  subalbum_id: 12, date_taken: Time.now,
                  file_name: '2014_01_15_flutterastro_0362.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/KT%20Merry/Flutter%20Magazine%20May%2022/2014_01_15_flutterastro_0362.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/KT%20Merry/Flutter%20Magazine%20May%2022/2014_01_15_flutterastro_0362.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/KT%20Merry/Flutter%20Magazine%20May%2022/2014_01_15_flutterastro_0362.jpg')
                Photo.create!(
                  subalbum_id: 12, date_taken: Time.now,
                  file_name: '2014_01_15_flutterastro_0369.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/KT%20Merry/Flutter%20Magazine%20May%2022/2014_01_15_flutterastro_0369.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/KT%20Merry/Flutter%20Magazine%20May%2022/2014_01_15_flutterastro_0369.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/KT%20Merry/Flutter%20Magazine%20May%2022/2014_01_15_flutterastro_0369.jpg')
                Photo.create!(
                  subalbum_id: 12, date_taken: Time.now,
                  file_name: '2014_01_15_flutterastro_0371.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/KT%20Merry/Flutter%20Magazine%20May%2022/2014_01_15_flutterastro_0371.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/KT%20Merry/Flutter%20Magazine%20May%2022/2014_01_15_flutterastro_0371.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/KT%20Merry/Flutter%20Magazine%20May%2022/2014_01_15_flutterastro_0371.jpg')
                Photo.create!(
                  subalbum_id: 12, date_taken: Time.now,
                  file_name: '2014_01_15_flutterastro_0379.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/KT%20Merry/Flutter%20Magazine%20May%2022/2014_01_15_flutterastro_0379.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/KT%20Merry/Flutter%20Magazine%20May%2022/2014_01_15_flutterastro_0379.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/KT%20Merry/Flutter%20Magazine%20May%2022/2014_01_15_flutterastro_0379.jpg')
                Photo.create!(
                  subalbum_id: 12, date_taken: Time.now,
                  file_name: '2014_01_15_flutterastro_0389.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/KT%20Merry/Flutter%20Magazine%20May%2022/2014_01_15_flutterastro_0389.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/KT%20Merry/Flutter%20Magazine%20May%2022/2014_01_15_flutterastro_0389.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/KT%20Merry/Flutter%20Magazine%20May%2022/2014_01_15_flutterastro_0389.jpg')
                Photo.create!(
                  subalbum_id: 12, date_taken: Time.now,
                  file_name: '2014_01_15_flutterastro_0393.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/KT%20Merry/Flutter%20Magazine%20May%2022/2014_01_15_flutterastro_0393.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/KT%20Merry/Flutter%20Magazine%20May%2022/2014_01_15_flutterastro_0393.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/KT%20Merry/Flutter%20Magazine%20May%2022/2014_01_15_flutterastro_0393.jpg')
                Photo.create!(
                  subalbum_id: 12, date_taken: Time.now,
                  file_name: '2014_01_15_flutterastro_0419.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/KT%20Merry/Flutter%20Magazine%20May%2022/2014_01_15_flutterastro_0419.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/KT%20Merry/Flutter%20Magazine%20May%2022/2014_01_15_flutterastro_0419.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/KT%20Merry/Flutter%20Magazine%20May%2022/2014_01_15_flutterastro_0419.jpg')
                Photo.create!(
                  subalbum_id: 12, date_taken: Time.now,
                  file_name: '2014_01_15_flutterastro_0420.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/KT%20Merry/Flutter%20Magazine%20May%2022/2014_01_15_flutterastro_0420.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/KT%20Merry/Flutter%20Magazine%20May%2022/2014_01_15_flutterastro_0420.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/KT%20Merry/Flutter%20Magazine%20May%2022/2014_01_15_flutterastro_0420.jpg')
                Photo.create!(
                  subalbum_id: 12, date_taken: Time.now,
                  file_name: '2014_01_15_flutterastro_0429.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/KT%20Merry/Flutter%20Magazine%20May%2022/2014_01_15_flutterastro_0429.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/KT%20Merry/Flutter%20Magazine%20May%2022/2014_01_15_flutterastro_0429.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/KT%20Merry/Flutter%20Magazine%20May%2022/2014_01_15_flutterastro_0429.jpg')
                Photo.create!(
                  subalbum_id: 12, date_taken: Time.now,
                  file_name: '2014_01_15_flutterastro_0464.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/KT%20Merry/Flutter%20Magazine%20May%2022/2014_01_15_flutterastro_0464.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/KT%20Merry/Flutter%20Magazine%20May%2022/2014_01_15_flutterastro_0464.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/KT%20Merry/Flutter%20Magazine%20May%2022/2014_01_15_flutterastro_0464.jpg')
                Photo.create!(
                  subalbum_id: 12, date_taken: Time.now,
                  file_name: '2014_01_15_flutterastro_0465.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/KT%20Merry/Flutter%20Magazine%20May%2022/2014_01_15_flutterastro_0465.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/KT%20Merry/Flutter%20Magazine%20May%2022/2014_01_15_flutterastro_0465.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/KT%20Merry/Flutter%20Magazine%20May%2022/2014_01_15_flutterastro_0465.jpg')
                Photo.create!(
                  subalbum_id: 12, date_taken: Time.now,
                  file_name: '2014_01_15_flutterastro_04981.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/KT%20Merry/Flutter%20Magazine%20May%2022/2014_01_15_flutterastro_04981.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/KT%20Merry/Flutter%20Magazine%20May%2022/2014_01_15_flutterastro_04981.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/KT%20Merry/Flutter%20Magazine%20May%2022/2014_01_15_flutterastro_04981.jpg')
                Photo.create!(
                  subalbum_id: 12, date_taken: Time.now,
                  file_name: '2014_01_15_flutterastro_0504.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/KT%20Merry/Flutter%20Magazine%20May%2022/2014_01_15_flutterastro_0504.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/KT%20Merry/Flutter%20Magazine%20May%2022/2014_01_15_flutterastro_0504.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/KT%20Merry/Flutter%20Magazine%20May%2022/2014_01_15_flutterastro_0504.jpg')
                Photo.create!(
                  subalbum_id: 12, date_taken: Time.now,
                  file_name: '2014_01_15_flutterastro_0506.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/KT%20Merry/Flutter%20Magazine%20May%2022/2014_01_15_flutterastro_0506.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/KT%20Merry/Flutter%20Magazine%20May%2022/2014_01_15_flutterastro_0506.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/KT%20Merry/Flutter%20Magazine%20May%2022/2014_01_15_flutterastro_0506.jpg')
                Photo.create!(
                  subalbum_id: 12, date_taken: Time.now,
                  file_name: '2014_01_15_flutterastro_05091.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/KT%20Merry/Flutter%20Magazine%20May%2022/2014_01_15_flutterastro_05091.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/KT%20Merry/Flutter%20Magazine%20May%2022/2014_01_15_flutterastro_05091.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/KT%20Merry/Flutter%20Magazine%20May%2022/2014_01_15_flutterastro_05091.jpg')
                Photo.create!(
                  subalbum_id: 12, date_taken: Time.now,
                  file_name: '2014_01_15_flutterastro_0514.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/KT%20Merry/Flutter%20Magazine%20May%2022/2014_01_15_flutterastro_0514.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/KT%20Merry/Flutter%20Magazine%20May%2022/2014_01_15_flutterastro_0514.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/KT%20Merry/Flutter%20Magazine%20May%2022/2014_01_15_flutterastro_0514.jpg')
                Photo.create!(
                  subalbum_id: 12, date_taken: Time.now,
                  file_name: '2014_01_15_flutterastro_0520.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/KT%20Merry/Flutter%20Magazine%20May%2022/2014_01_15_flutterastro_0520.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/KT%20Merry/Flutter%20Magazine%20May%2022/2014_01_15_flutterastro_0520.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/KT%20Merry/Flutter%20Magazine%20May%2022/2014_01_15_flutterastro_0520.jpg')
                Photo.create!(
                  subalbum_id: 12, date_taken: Time.now,
                  file_name: '2014_01_15_flutterastro_0534.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/KT%20Merry/Flutter%20Magazine%20May%2022/2014_01_15_flutterastro_0534.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/KT%20Merry/Flutter%20Magazine%20May%2022/2014_01_15_flutterastro_0534.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/KT%20Merry/Flutter%20Magazine%20May%2022/2014_01_15_flutterastro_0534.jpg')
                Photo.create!(
                  subalbum_id: 12, date_taken: Time.now,
                  file_name: '2014_01_15_flutterastro_0573.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/KT%20Merry/Flutter%20Magazine%20May%2022/2014_01_15_flutterastro_0573.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/KT%20Merry/Flutter%20Magazine%20May%2022/2014_01_15_flutterastro_0573.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/KT%20Merry/Flutter%20Magazine%20May%2022/2014_01_15_flutterastro_0573.jpg')
                Photo.create!(
                  subalbum_id: 12, date_taken: Time.now,
                  file_name: '2014_01_15_flutterastro_0574.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/KT%20Merry/Flutter%20Magazine%20May%2022/2014_01_15_flutterastro_0574.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/KT%20Merry/Flutter%20Magazine%20May%2022/2014_01_15_flutterastro_0574.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/KT%20Merry/Flutter%20Magazine%20May%2022/2014_01_15_flutterastro_0574.jpg')
                Photo.create!(
                  subalbum_id: 12, date_taken: Time.now,
                  file_name: '6163_01_KW_FLUTTER_MAG_S000_0100_V2.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/KT%20Merry/Flutter%20Magazine%20May%2022/6163_01_KW_FLUTTER_MAG_S000_0100_V2.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/KT%20Merry/Flutter%20Magazine%20May%2022/6163_01_KW_FLUTTER_MAG_S000_0100_V2.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/KT%20Merry/Flutter%20Magazine%20May%2022/6163_01_KW_FLUTTER_MAG_S000_0100_V2.jpg')
                Photo.create!(
                  subalbum_id: 12, date_taken: Time.now,
                  file_name: '6163_02_KW_FLUTTER_MAG_S000_0268_V2.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/KT%20Merry/Flutter%20Magazine%20May%2022/6163_02_KW_FLUTTER_MAG_S000_0268_V2.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/KT%20Merry/Flutter%20Magazine%20May%2022/6163_02_KW_FLUTTER_MAG_S000_0268_V2.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/KT%20Merry/Flutter%20Magazine%20May%2022/6163_02_KW_FLUTTER_MAG_S000_0268_V2.jpg')
                Photo.create!(
                  subalbum_id: 12, date_taken: Time.now,
                  file_name: '6163_05_KW_FLUTTER_MAG_S812_0001_V2.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/KT%20Merry/Flutter%20Magazine%20May%2022/6163_05_KW_FLUTTER_MAG_S812_0001_V2.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/KT%20Merry/Flutter%20Magazine%20May%2022/6163_05_KW_FLUTTER_MAG_S812_0001_V2.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/KT%20Merry/Flutter%20Magazine%20May%2022/6163_05_KW_FLUTTER_MAG_S812_0001_V2.jpg')



User.create!(email: "karen@example.com", password: "password", business_name: "Karen Ling", website: "https://www.karenling.net") # User3


        Album.create!(title: "Stephanie and Cary", event_date: "2014-08-28 00:00:00 -0800", cover_image_id: 291, user_id: 3, status: 'Published') # Album9
              # default subalbum #13
                Photo.create!(
                  subalbum_id: 13, date_taken: Time.now,
                  file_name: 'stephanie-cary-01.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/stephanie_cary_aug_28_2014/stephanie-cary-01.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/stephanie_cary_aug_28_2014/stephanie-cary-01.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/stephanie_cary_aug_28_2014/stephanie-cary-01.jpg')
                Photo.create!(
                  subalbum_id: 13, date_taken: Time.now,
                  file_name: 'stephanie-cary-02.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/stephanie_cary_aug_28_2014/stephanie-cary-02.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/stephanie_cary_aug_28_2014/stephanie-cary-02.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/stephanie_cary_aug_28_2014/stephanie-cary-02.jpg')
                Photo.create!(
                  subalbum_id: 13, date_taken: Time.now,
                  file_name: 'stephanie-cary-03.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/stephanie_cary_aug_28_2014/stephanie-cary-03.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/stephanie_cary_aug_28_2014/stephanie-cary-03.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/stephanie_cary_aug_28_2014/stephanie-cary-03.jpg')
                Photo.create!(
                  subalbum_id: 13, date_taken: Time.now,
                  file_name: 'stephanie-cary-04.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/stephanie_cary_aug_28_2014/stephanie-cary-04.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/stephanie_cary_aug_28_2014/stephanie-cary-04.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/stephanie_cary_aug_28_2014/stephanie-cary-04.jpg')
                Photo.create!(
                  subalbum_id: 13, date_taken: Time.now,
                  file_name: 'stephanie-cary-05.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/stephanie_cary_aug_28_2014/stephanie-cary-05.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/stephanie_cary_aug_28_2014/stephanie-cary-05.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/stephanie_cary_aug_28_2014/stephanie-cary-05.jpg')
                Photo.create!(
                  subalbum_id: 13, date_taken: Time.now,
                  file_name: 'stephanie-cary-06.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/stephanie_cary_aug_28_2014/stephanie-cary-06.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/stephanie_cary_aug_28_2014/stephanie-cary-06.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/stephanie_cary_aug_28_2014/stephanie-cary-06.jpg')
                Photo.create!(
                  subalbum_id: 13, date_taken: Time.now,
                  file_name: 'stephanie-cary-07.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/stephanie_cary_aug_28_2014/stephanie-cary-07.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/stephanie_cary_aug_28_2014/stephanie-cary-07.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/stephanie_cary_aug_28_2014/stephanie-cary-07.jpg')
                Photo.create!(
                  subalbum_id: 13, date_taken: Time.now,
                  file_name: 'stephanie-cary-08.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/stephanie_cary_aug_28_2014/stephanie-cary-08.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/stephanie_cary_aug_28_2014/stephanie-cary-08.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/stephanie_cary_aug_28_2014/stephanie-cary-08.jpg')
                Photo.create!(
                  subalbum_id: 13, date_taken: Time.now,
                  file_name: 'stephanie-cary-09.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/stephanie_cary_aug_28_2014/stephanie-cary-09.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/stephanie_cary_aug_28_2014/stephanie-cary-09.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/stephanie_cary_aug_28_2014/stephanie-cary-09.jpg')
                Photo.create!(
                  subalbum_id: 13, date_taken: Time.now,
                  file_name: 'stephanie-cary-10.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/stephanie_cary_aug_28_2014/stephanie-cary-10.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/stephanie_cary_aug_28_2014/stephanie-cary-10.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/stephanie_cary_aug_28_2014/stephanie-cary-10.jpg')
                Photo.create!(
                  subalbum_id: 13, date_taken: Time.now,
                  file_name: 'stephanie-cary-11.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/stephanie_cary_aug_28_2014/stephanie-cary-11.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/stephanie_cary_aug_28_2014/stephanie-cary-11.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/stephanie_cary_aug_28_2014/stephanie-cary-11.jpg')
                Photo.create!(
                  subalbum_id: 13, date_taken: Time.now,
                  file_name: 'stephanie-cary-12.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/stephanie_cary_aug_28_2014/stephanie-cary-12.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/stephanie_cary_aug_28_2014/stephanie-cary-12.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/stephanie_cary_aug_28_2014/stephanie-cary-12.jpg')
                Photo.create!(
                  subalbum_id: 13, date_taken: Time.now,
                  file_name: 'stephanie-cary-13.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/stephanie_cary_aug_28_2014/stephanie-cary-13.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/stephanie_cary_aug_28_2014/stephanie-cary-13.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/stephanie_cary_aug_28_2014/stephanie-cary-13.jpg')
                Photo.create!(
                  subalbum_id: 13, date_taken: Time.now,
                  file_name: 'stephanie-cary-13.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/stephanie_cary_aug_28_2014/stephanie-cary-13.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/stephanie_cary_aug_28_2014/stephanie-cary-13.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/stephanie_cary_aug_28_2014/stephanie-cary-13.jpg')
                Photo.create!(
                  subalbum_id: 13, date_taken: Time.now,
                  file_name: 'stephanie-cary-15.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/stephanie_cary_aug_28_2014/stephanie-cary-15.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/stephanie_cary_aug_28_2014/stephanie-cary-15.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/stephanie_cary_aug_28_2014/stephanie-cary-15.jpg')
                Photo.create!(
                  subalbum_id: 13, date_taken: Time.now,
                  file_name: 'stephanie-cary-16.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/stephanie_cary_aug_28_2014/stephanie-cary-16.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/stephanie_cary_aug_28_2014/stephanie-cary-16.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/stephanie_cary_aug_28_2014/stephanie-cary-16.jpg')
                Photo.create!(
                  subalbum_id: 13, date_taken: Time.now,
                  file_name: 'stephanie-cary-17.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/stephanie_cary_aug_28_2014/stephanie-cary-17.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/stephanie_cary_aug_28_2014/stephanie-cary-17.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/stephanie_cary_aug_28_2014/stephanie-cary-17.jpg')
                Photo.create!(
                  subalbum_id: 13, date_taken: Time.now,
                  file_name: 'stephanie-cary-18.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/stephanie_cary_aug_28_2014/stephanie-cary-18.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/stephanie_cary_aug_28_2014/stephanie-cary-18.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/stephanie_cary_aug_28_2014/stephanie-cary-18.jpg')
                Photo.create!(
                  subalbum_id: 13, date_taken: Time.now,
                  file_name: 'stephanie-cary-19.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/stephanie_cary_aug_28_2014/stephanie-cary-19.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/stephanie_cary_aug_28_2014/stephanie-cary-19.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/stephanie_cary_aug_28_2014/stephanie-cary-19.jpg')
                Photo.create!(
                  subalbum_id: 13, date_taken: Time.now,
                  file_name: 'stephanie-cary-20.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/stephanie_cary_aug_28_2014/stephanie-cary-20.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/stephanie_cary_aug_28_2014/stephanie-cary-20.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/stephanie_cary_aug_28_2014/stephanie-cary-20.jpg')
                Photo.create!(
                  subalbum_id: 13, date_taken: Time.now,
                  file_name: 'stephanie-cary-21.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/stephanie_cary_aug_28_2014/stephanie-cary-21.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/stephanie_cary_aug_28_2014/stephanie-cary-21.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/stephanie_cary_aug_28_2014/stephanie-cary-21.jpg')
                Photo.create!(
                  subalbum_id: 13, date_taken: Time.now,
                  file_name: 'stephanie-cary-22.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/stephanie_cary_aug_28_2014/stephanie-cary-22.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/stephanie_cary_aug_28_2014/stephanie-cary-22.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/stephanie_cary_aug_28_2014/stephanie-cary-22.jpg')
                Photo.create!(
                  subalbum_id: 13, date_taken: Time.now,
                  file_name: 'stephanie-cary-23.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/stephanie_cary_aug_28_2014/stephanie-cary-23.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/stephanie_cary_aug_28_2014/stephanie-cary-23.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/stephanie_cary_aug_28_2014/stephanie-cary-23.jpg')
                Photo.create!(
                  subalbum_id: 13, date_taken: Time.now,
                  file_name: 'stephanie-cary-24.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/stephanie_cary_aug_28_2014/stephanie-cary-24.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/stephanie_cary_aug_28_2014/stephanie-cary-24.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/stephanie_cary_aug_28_2014/stephanie-cary-24.jpg')
                Photo.create!(
                  subalbum_id: 13, date_taken: Time.now,
                  file_name: 'stephanie-cary-25.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/stephanie_cary_aug_28_2014/stephanie-cary-25.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/stephanie_cary_aug_28_2014/stephanie-cary-25.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/stephanie_cary_aug_28_2014/stephanie-cary-25.jpg')
                Photo.create!(
                  subalbum_id: 13, date_taken: Time.now,
                  file_name: 'stephanie-cary-26.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/stephanie_cary_aug_28_2014/stephanie-cary-26.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/stephanie_cary_aug_28_2014/stephanie-cary-26.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/stephanie_cary_aug_28_2014/stephanie-cary-26.jpg')
                Photo.create!(
                  subalbum_id: 13, date_taken: Time.now,
                  file_name: 'stephanie-cary-27.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/stephanie_cary_aug_28_2014/stephanie-cary-27.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/stephanie_cary_aug_28_2014/stephanie-cary-27.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/stephanie_cary_aug_28_2014/stephanie-cary-27.jpg')
                Photo.create!(
                  subalbum_id: 13, date_taken: Time.now,
                  file_name: 'stephanie-cary-28.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/stephanie_cary_aug_28_2014/stephanie-cary-28.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/stephanie_cary_aug_28_2014/stephanie-cary-28.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/stephanie_cary_aug_28_2014/stephanie-cary-28.jpg')
                Photo.create!(
                  subalbum_id: 13, date_taken: Time.now,
                  file_name: 'stephanie-cary-29.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/stephanie_cary_aug_28_2014/stephanie-cary-29.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/stephanie_cary_aug_28_2014/stephanie-cary-29.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/stephanie_cary_aug_28_2014/stephanie-cary-29.jpg')
                Photo.create!(
                  subalbum_id: 13, date_taken: Time.now,
                  file_name: 'stephanie-cary-30.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/stephanie_cary_aug_28_2014/stephanie-cary-30.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/stephanie_cary_aug_28_2014/stephanie-cary-30.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/stephanie_cary_aug_28_2014/stephanie-cary-30.jpg')
                Photo.create!(
                  subalbum_id: 13, date_taken: Time.now,
                  file_name: 'stephanie-cary-31.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/stephanie_cary_aug_28_2014/stephanie-cary-31.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/stephanie_cary_aug_28_2014/stephanie-cary-31.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/stephanie_cary_aug_28_2014/stephanie-cary-31.jpg')




          Album.create!(title: "Florence, Hung, and Aurora", event_date: "2014-09-17 00:00:00 -0800", cover_image_id: 305, user_id: 3, status: 'Published')

            # default subalbum #14

                Photo.create!(
                  subalbum_id: 14, date_taken: Time.now,
                  file_name: 'florence-hung-01.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/florence_hung_aurora_sep_17/florence-hung-01.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/florence_hung_aurora_sep_17/florence-hung-01.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/florence_hung_aurora_sep_17/florence-hung-01.jpg')
                Photo.create!(
                  subalbum_id: 14, date_taken: Time.now,
                  file_name: 'florence-hung-02.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/florence_hung_aurora_sep_17/florence-hung-02.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/florence_hung_aurora_sep_17/florence-hung-02.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/florence_hung_aurora_sep_17/florence-hung-02.jpg')
                Photo.create!(
                  subalbum_id: 14, date_taken: Time.now,
                  file_name: 'florence-hung-03.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/florence_hung_aurora_sep_17/florence-hung-03.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/florence_hung_aurora_sep_17/florence-hung-03.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/florence_hung_aurora_sep_17/florence-hung-03.jpg')
                Photo.create!(
                  subalbum_id: 14, date_taken: Time.now,
                  file_name: 'florence-hung-04.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/florence_hung_aurora_sep_17/florence-hung-04.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/florence_hung_aurora_sep_17/florence-hung-04.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/florence_hung_aurora_sep_17/florence-hung-04.jpg')
                Photo.create!(
                  subalbum_id: 14, date_taken: Time.now,
                  file_name: 'florence-hung-05.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/florence_hung_aurora_sep_17/florence-hung-05.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/florence_hung_aurora_sep_17/florence-hung-05.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/florence_hung_aurora_sep_17/florence-hung-05.jpg')
                Photo.create!(
                  subalbum_id: 14, date_taken: Time.now,
                  file_name: 'florence-hung-06.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/florence_hung_aurora_sep_17/florence-hung-06.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/florence_hung_aurora_sep_17/florence-hung-06.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/florence_hung_aurora_sep_17/florence-hung-06.jpg')
                Photo.create!(
                  subalbum_id: 14, date_taken: Time.now,
                  file_name: 'florence-hung-07.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/florence_hung_aurora_sep_17/florence-hung-07.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/florence_hung_aurora_sep_17/florence-hung-07.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/florence_hung_aurora_sep_17/florence-hung-07.jpg')
                Photo.create!(
                  subalbum_id: 14, date_taken: Time.now,
                  file_name: 'florence-hung-08.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/florence_hung_aurora_sep_17/florence-hung-08.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/florence_hung_aurora_sep_17/florence-hung-08.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/florence_hung_aurora_sep_17/florence-hung-08.jpg')
                Photo.create!(
                  subalbum_id: 14, date_taken: Time.now,
                  file_name: 'florence-hung-09.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/florence_hung_aurora_sep_17/florence-hung-09.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/florence_hung_aurora_sep_17/florence-hung-09.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/florence_hung_aurora_sep_17/florence-hung-09.jpg')
                Photo.create!(
                  subalbum_id: 14, date_taken: Time.now,
                  file_name: 'florence-hung-10.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/florence_hung_aurora_sep_17/florence-hung-10.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/florence_hung_aurora_sep_17/florence-hung-10.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/florence_hung_aurora_sep_17/florence-hung-10.jpg')



          Album.create!(title: "Nadine and Jose", event_date: "2014-08-26 00:00:00 -0800", cover_image_id: 350, user_id: 3, status: 'Published', password: '4444') #10

          # Auto Highlights Subalbum #15
          Subalbum.create!(title: "Preparation ", album_id: 10) #16
          Subalbum.create!(title: "Ceremony ", album_id: 10) #17
          Subalbum.create!(title: "Receiption", album_id: 10) #18

                Photo.create!(
                  subalbum_id: 15, date_taken: Time.now,
                  file_name: 'diane_angel_gomez_nadine_jose_004.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/nadine_jose_aug_26_2014/Highlights/diane_angel_gomez_nadine_jose_004.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/nadine_jose_aug_26_2014/Highlights/diane_angel_gomez_nadine_jose_004.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/nadine_jose_aug_26_2014/Highlights/diane_angel_gomez_nadine_jose_004.jpg')
                Photo.create!(
                  subalbum_id: 15, date_taken: Time.now,
                  file_name: 'diane_angel_gomez_nadine_jose_008.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/nadine_jose_aug_26_2014/Highlights/diane_angel_gomez_nadine_jose_008.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/nadine_jose_aug_26_2014/Highlights/diane_angel_gomez_nadine_jose_008.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/nadine_jose_aug_26_2014/Highlights/diane_angel_gomez_nadine_jose_008.jpg')
                Photo.create!(
                  subalbum_id: 15, date_taken: Time.now,
                  file_name: 'diane_angel_gomez_nadine_jose_010.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/nadine_jose_aug_26_2014/Highlights/diane_angel_gomez_nadine_jose_010.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/nadine_jose_aug_26_2014/Highlights/diane_angel_gomez_nadine_jose_010.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/nadine_jose_aug_26_2014/Highlights/diane_angel_gomez_nadine_jose_010.jpg')
                Photo.create!(
                  subalbum_id: 15, date_taken: Time.now,
                  file_name: 'diane_angel_gomez_nadine_jose_012.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/nadine_jose_aug_26_2014/Highlights/diane_angel_gomez_nadine_jose_012.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/nadine_jose_aug_26_2014/Highlights/diane_angel_gomez_nadine_jose_012.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/nadine_jose_aug_26_2014/Highlights/diane_angel_gomez_nadine_jose_012.jpg')
                Photo.create!(
                  subalbum_id: 15, date_taken: Time.now,
                  file_name: 'diane_angel_gomez_nadine_jose_013.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/nadine_jose_aug_26_2014/Highlights/diane_angel_gomez_nadine_jose_013.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/nadine_jose_aug_26_2014/Highlights/diane_angel_gomez_nadine_jose_013.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/nadine_jose_aug_26_2014/Highlights/diane_angel_gomez_nadine_jose_013.jpg')
                Photo.create!(
                  subalbum_id: 15, date_taken: Time.now,
                  file_name: 'diane_angel_gomez_nadine_jose_017.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/nadine_jose_aug_26_2014/Highlights/diane_angel_gomez_nadine_jose_017.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/nadine_jose_aug_26_2014/Highlights/diane_angel_gomez_nadine_jose_017.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/nadine_jose_aug_26_2014/Highlights/diane_angel_gomez_nadine_jose_017.jpg')
                Photo.create!(
                  subalbum_id: 15, date_taken: Time.now,
                  file_name: 'diane_angel_gomez_nadine_jose_020.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/nadine_jose_aug_26_2014/Highlights/diane_angel_gomez_nadine_jose_020.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/nadine_jose_aug_26_2014/Highlights/diane_angel_gomez_nadine_jose_020.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/nadine_jose_aug_26_2014/Highlights/diane_angel_gomez_nadine_jose_020.jpg')
                Photo.create!(
                  subalbum_id: 15, date_taken: Time.now,
                  file_name: 'diane_angel_gomez_nadine_jose_023.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/nadine_jose_aug_26_2014/Highlights/diane_angel_gomez_nadine_jose_023.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/nadine_jose_aug_26_2014/Highlights/diane_angel_gomez_nadine_jose_023.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/nadine_jose_aug_26_2014/Highlights/diane_angel_gomez_nadine_jose_023.jpg')
                Photo.create!(
                  subalbum_id: 15, date_taken: Time.now,
                  file_name: 'diane_angel_gomez_nadine_jose_026.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/nadine_jose_aug_26_2014/Highlights/diane_angel_gomez_nadine_jose_026.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/nadine_jose_aug_26_2014/Highlights/diane_angel_gomez_nadine_jose_026.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/nadine_jose_aug_26_2014/Highlights/diane_angel_gomez_nadine_jose_026.jpg')
                Photo.create!(
                  subalbum_id: 15, date_taken: Time.now,
                  file_name: 'diane_angel_gomez_nadine_jose_029.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/nadine_jose_aug_26_2014/Highlights/diane_angel_gomez_nadine_jose_029.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/nadine_jose_aug_26_2014/Highlights/diane_angel_gomez_nadine_jose_029.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/nadine_jose_aug_26_2014/Highlights/diane_angel_gomez_nadine_jose_029.jpg')
                Photo.create!(
                  subalbum_id: 15, date_taken: Time.now,
                  file_name: 'diane_angel_gomez_nadine_jose_032.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/nadine_jose_aug_26_2014/Highlights/diane_angel_gomez_nadine_jose_032.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/nadine_jose_aug_26_2014/Highlights/diane_angel_gomez_nadine_jose_032.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/nadine_jose_aug_26_2014/Highlights/diane_angel_gomez_nadine_jose_032.jpg')
                Photo.create!(
                  subalbum_id: 15, date_taken: Time.now,
                  file_name: 'diane_angel_gomez_nadine_jose_035.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/nadine_jose_aug_26_2014/Highlights/diane_angel_gomez_nadine_jose_035.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/nadine_jose_aug_26_2014/Highlights/diane_angel_gomez_nadine_jose_035.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/nadine_jose_aug_26_2014/Highlights/diane_angel_gomez_nadine_jose_035.jpg')
                Photo.create!(
                  subalbum_id: 15, date_taken: Time.now,
                  file_name: 'diane_angel_gomez_nadine_jose_040.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/nadine_jose_aug_26_2014/Highlights/diane_angel_gomez_nadine_jose_040.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/nadine_jose_aug_26_2014/Highlights/diane_angel_gomez_nadine_jose_040.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/nadine_jose_aug_26_2014/Highlights/diane_angel_gomez_nadine_jose_040.jpg')
                Photo.create!(
                  subalbum_id: 15, date_taken: Time.now,
                  file_name: 'diane_angel_gomez_nadine_jose_043.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/nadine_jose_aug_26_2014/Highlights/diane_angel_gomez_nadine_jose_043.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/nadine_jose_aug_26_2014/Highlights/diane_angel_gomez_nadine_jose_043.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/nadine_jose_aug_26_2014/Highlights/diane_angel_gomez_nadine_jose_043.jpg')
                Photo.create!(
                  subalbum_id: 15, date_taken: Time.now,
                  file_name: 'diane_angel_gomez_nadine_jose_046.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/nadine_jose_aug_26_2014/Highlights/diane_angel_gomez_nadine_jose_046.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/nadine_jose_aug_26_2014/Highlights/diane_angel_gomez_nadine_jose_046.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/nadine_jose_aug_26_2014/Highlights/diane_angel_gomez_nadine_jose_046.jpg')
                Photo.create!(
                  subalbum_id: 15, date_taken: Time.now,
                  file_name: 'diane_angel_gomez_nadine_jose_050.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/nadine_jose_aug_26_2014/Highlights/diane_angel_gomez_nadine_jose_050.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/nadine_jose_aug_26_2014/Highlights/diane_angel_gomez_nadine_jose_050.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/nadine_jose_aug_26_2014/Highlights/diane_angel_gomez_nadine_jose_050.jpg')



                  Photo.create!(
                  subalbum_id: 16, date_taken: Time.now,
                  file_name: 'diane_angel_gomez_nadine_jose_002.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/nadine_jose_aug_26_2014/Preparation/diane_angel_gomez_nadine_jose_002.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/nadine_jose_aug_26_2014/Preparation/diane_angel_gomez_nadine_jose_002.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/nadine_jose_aug_26_2014/Preparation/diane_angel_gomez_nadine_jose_002.jpg')
                Photo.create!(
                  subalbum_id: 16, date_taken: Time.now,
                  file_name: 'diane_angel_gomez_nadine_jose_003.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/nadine_jose_aug_26_2014/Preparation/diane_angel_gomez_nadine_jose_003.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/nadine_jose_aug_26_2014/Preparation/diane_angel_gomez_nadine_jose_003.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/nadine_jose_aug_26_2014/Preparation/diane_angel_gomez_nadine_jose_003.jpg')
                Photo.create!(
                  subalbum_id: 16, date_taken: Time.now,
                  file_name: 'diane_angel_gomez_nadine_jose_004.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/nadine_jose_aug_26_2014/Preparation/diane_angel_gomez_nadine_jose_004.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/nadine_jose_aug_26_2014/Preparation/diane_angel_gomez_nadine_jose_004.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/nadine_jose_aug_26_2014/Preparation/diane_angel_gomez_nadine_jose_004.jpg')
                Photo.create!(
                  subalbum_id: 16, date_taken: Time.now,
                  file_name: 'diane_angel_gomez_nadine_jose_005.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/nadine_jose_aug_26_2014/Preparation/diane_angel_gomez_nadine_jose_005.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/nadine_jose_aug_26_2014/Preparation/diane_angel_gomez_nadine_jose_005.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/nadine_jose_aug_26_2014/Preparation/diane_angel_gomez_nadine_jose_005.jpg')
                Photo.create!(
                  subalbum_id: 16, date_taken: Time.now,
                  file_name: 'diane_angel_gomez_nadine_jose_006.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/nadine_jose_aug_26_2014/Preparation/diane_angel_gomez_nadine_jose_006.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/nadine_jose_aug_26_2014/Preparation/diane_angel_gomez_nadine_jose_006.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/nadine_jose_aug_26_2014/Preparation/diane_angel_gomez_nadine_jose_006.jpg')
                Photo.create!(
                  subalbum_id: 16, date_taken: Time.now,
                  file_name: 'diane_angel_gomez_nadine_jose_007.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/nadine_jose_aug_26_2014/Preparation/diane_angel_gomez_nadine_jose_007.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/nadine_jose_aug_26_2014/Preparation/diane_angel_gomez_nadine_jose_007.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/nadine_jose_aug_26_2014/Preparation/diane_angel_gomez_nadine_jose_007.jpg')
                Photo.create!(
                  subalbum_id: 16, date_taken: Time.now,
                  file_name: 'diane_angel_gomez_nadine_jose_008.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/nadine_jose_aug_26_2014/Preparation/diane_angel_gomez_nadine_jose_008.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/nadine_jose_aug_26_2014/Preparation/diane_angel_gomez_nadine_jose_008.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/nadine_jose_aug_26_2014/Preparation/diane_angel_gomez_nadine_jose_008.jpg')
                Photo.create!(
                  subalbum_id: 16, date_taken: Time.now,
                  file_name: 'diane_angel_gomez_nadine_jose_009.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/nadine_jose_aug_26_2014/Preparation/diane_angel_gomez_nadine_jose_009.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/nadine_jose_aug_26_2014/Preparation/diane_angel_gomez_nadine_jose_009.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/nadine_jose_aug_26_2014/Preparation/diane_angel_gomez_nadine_jose_009.jpg')
                Photo.create!(
                  subalbum_id: 16, date_taken: Time.now,
                  file_name: 'diane_angel_gomez_nadine_jose_010.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/nadine_jose_aug_26_2014/Preparation/diane_angel_gomez_nadine_jose_010.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/nadine_jose_aug_26_2014/Preparation/diane_angel_gomez_nadine_jose_010.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/nadine_jose_aug_26_2014/Preparation/diane_angel_gomez_nadine_jose_010.jpg')



                Photo.create!(
                  subalbum_id: 17, date_taken: Time.now,
                  file_name: 'diane_angel_gomez_nadine_jose_001.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/nadine_jose_aug_26_2014/Ceremony/diane_angel_gomez_nadine_jose_001.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/nadine_jose_aug_26_2014/Ceremony/diane_angel_gomez_nadine_jose_001.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/nadine_jose_aug_26_2014/Ceremony/diane_angel_gomez_nadine_jose_001.jpg')
                Photo.create!(
                  subalbum_id: 17, date_taken: Time.now,
                  file_name: 'diane_angel_gomez_nadine_jose_011.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/nadine_jose_aug_26_2014/Ceremony/diane_angel_gomez_nadine_jose_011.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/nadine_jose_aug_26_2014/Ceremony/diane_angel_gomez_nadine_jose_011.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/nadine_jose_aug_26_2014/Ceremony/diane_angel_gomez_nadine_jose_011.jpg')
                Photo.create!(
                  subalbum_id: 17, date_taken: Time.now,
                  file_name: 'diane_angel_gomez_nadine_jose_012.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/nadine_jose_aug_26_2014/Ceremony/diane_angel_gomez_nadine_jose_012.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/nadine_jose_aug_26_2014/Ceremony/diane_angel_gomez_nadine_jose_012.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/nadine_jose_aug_26_2014/Ceremony/diane_angel_gomez_nadine_jose_012.jpg')
                Photo.create!(
                  subalbum_id: 17, date_taken: Time.now,
                  file_name: 'diane_angel_gomez_nadine_jose_013.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/nadine_jose_aug_26_2014/Ceremony/diane_angel_gomez_nadine_jose_013.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/nadine_jose_aug_26_2014/Ceremony/diane_angel_gomez_nadine_jose_013.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/nadine_jose_aug_26_2014/Ceremony/diane_angel_gomez_nadine_jose_013.jpg')
                Photo.create!(
                  subalbum_id: 17, date_taken: Time.now,
                  file_name: 'diane_angel_gomez_nadine_jose_014.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/nadine_jose_aug_26_2014/Ceremony/diane_angel_gomez_nadine_jose_014.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/nadine_jose_aug_26_2014/Ceremony/diane_angel_gomez_nadine_jose_014.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/nadine_jose_aug_26_2014/Ceremony/diane_angel_gomez_nadine_jose_014.jpg')
                Photo.create!(
                  subalbum_id: 17, date_taken: Time.now,
                  file_name: 'diane_angel_gomez_nadine_jose_015.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/nadine_jose_aug_26_2014/Ceremony/diane_angel_gomez_nadine_jose_015.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/nadine_jose_aug_26_2014/Ceremony/diane_angel_gomez_nadine_jose_015.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/nadine_jose_aug_26_2014/Ceremony/diane_angel_gomez_nadine_jose_015.jpg')
                Photo.create!(
                  subalbum_id: 17, date_taken: Time.now,
                  file_name: 'diane_angel_gomez_nadine_jose_017.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/nadine_jose_aug_26_2014/Ceremony/diane_angel_gomez_nadine_jose_017.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/nadine_jose_aug_26_2014/Ceremony/diane_angel_gomez_nadine_jose_017.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/nadine_jose_aug_26_2014/Ceremony/diane_angel_gomez_nadine_jose_017.jpg')
                Photo.create!(
                  subalbum_id: 17, date_taken: Time.now,
                  file_name: 'diane_angel_gomez_nadine_jose_018.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/nadine_jose_aug_26_2014/Ceremony/diane_angel_gomez_nadine_jose_018.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/nadine_jose_aug_26_2014/Ceremony/diane_angel_gomez_nadine_jose_018.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/nadine_jose_aug_26_2014/Ceremony/diane_angel_gomez_nadine_jose_018.jpg')
                Photo.create!(
                  subalbum_id: 17, date_taken: Time.now,
                  file_name: 'diane_angel_gomez_nadine_jose_019.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/nadine_jose_aug_26_2014/Ceremony/diane_angel_gomez_nadine_jose_019.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/nadine_jose_aug_26_2014/Ceremony/diane_angel_gomez_nadine_jose_019.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/nadine_jose_aug_26_2014/Ceremony/diane_angel_gomez_nadine_jose_019.jpg')
                Photo.create!(
                  subalbum_id: 17, date_taken: Time.now,
                  file_name: 'diane_angel_gomez_nadine_jose_020.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/nadine_jose_aug_26_2014/Ceremony/diane_angel_gomez_nadine_jose_020.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/nadine_jose_aug_26_2014/Ceremony/diane_angel_gomez_nadine_jose_020.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/nadine_jose_aug_26_2014/Ceremony/diane_angel_gomez_nadine_jose_020.jpg')
                Photo.create!(
                  subalbum_id: 17, date_taken: Time.now,
                  file_name: 'diane_angel_gomez_nadine_jose_021.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/nadine_jose_aug_26_2014/Ceremony/diane_angel_gomez_nadine_jose_021.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/nadine_jose_aug_26_2014/Ceremony/diane_angel_gomez_nadine_jose_021.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/nadine_jose_aug_26_2014/Ceremony/diane_angel_gomez_nadine_jose_021.jpg')
                Photo.create!(
                  subalbum_id: 17, date_taken: Time.now,
                  file_name: 'diane_angel_gomez_nadine_jose_022.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/nadine_jose_aug_26_2014/Ceremony/diane_angel_gomez_nadine_jose_022.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/nadine_jose_aug_26_2014/Ceremony/diane_angel_gomez_nadine_jose_022.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/nadine_jose_aug_26_2014/Ceremony/diane_angel_gomez_nadine_jose_022.jpg')
                Photo.create!(
                  subalbum_id: 17, date_taken: Time.now,
                  file_name: 'diane_angel_gomez_nadine_jose_023.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/nadine_jose_aug_26_2014/Ceremony/diane_angel_gomez_nadine_jose_023.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/nadine_jose_aug_26_2014/Ceremony/diane_angel_gomez_nadine_jose_023.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/nadine_jose_aug_26_2014/Ceremony/diane_angel_gomez_nadine_jose_023.jpg')
                Photo.create!(
                  subalbum_id: 17, date_taken: Time.now,
                  file_name: 'diane_angel_gomez_nadine_jose_024.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/nadine_jose_aug_26_2014/Ceremony/diane_angel_gomez_nadine_jose_024.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/nadine_jose_aug_26_2014/Ceremony/diane_angel_gomez_nadine_jose_024.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/nadine_jose_aug_26_2014/Ceremony/diane_angel_gomez_nadine_jose_024.jpg')
                Photo.create!(
                  subalbum_id: 17, date_taken: Time.now,
                  file_name: 'diane_angel_gomez_nadine_jose_025.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/nadine_jose_aug_26_2014/Ceremony/diane_angel_gomez_nadine_jose_025.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/nadine_jose_aug_26_2014/Ceremony/diane_angel_gomez_nadine_jose_025.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/nadine_jose_aug_26_2014/Ceremony/diane_angel_gomez_nadine_jose_025.jpg')
                Photo.create!(
                  subalbum_id: 17, date_taken: Time.now,
                  file_name: 'diane_angel_gomez_nadine_jose_026.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/nadine_jose_aug_26_2014/Ceremony/diane_angel_gomez_nadine_jose_026.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/nadine_jose_aug_26_2014/Ceremony/diane_angel_gomez_nadine_jose_026.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/nadine_jose_aug_26_2014/Ceremony/diane_angel_gomez_nadine_jose_026.jpg')
                Photo.create!(
                  subalbum_id: 17, date_taken: Time.now,
                  file_name: 'diane_angel_gomez_nadine_jose_027.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/nadine_jose_aug_26_2014/Ceremony/diane_angel_gomez_nadine_jose_027.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/nadine_jose_aug_26_2014/Ceremony/diane_angel_gomez_nadine_jose_027.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/nadine_jose_aug_26_2014/Ceremony/diane_angel_gomez_nadine_jose_027.jpg')
                Photo.create!(
                  subalbum_id: 17, date_taken: Time.now,
                  file_name: 'diane_angel_gomez_nadine_jose_028.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/nadine_jose_aug_26_2014/Ceremony/diane_angel_gomez_nadine_jose_028.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/nadine_jose_aug_26_2014/Ceremony/diane_angel_gomez_nadine_jose_028.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/nadine_jose_aug_26_2014/Ceremony/diane_angel_gomez_nadine_jose_028.jpg')
                Photo.create!(
                  subalbum_id: 17, date_taken: Time.now,
                  file_name: 'diane_angel_gomez_nadine_jose_029.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/nadine_jose_aug_26_2014/Ceremony/diane_angel_gomez_nadine_jose_029.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/nadine_jose_aug_26_2014/Ceremony/diane_angel_gomez_nadine_jose_029.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/nadine_jose_aug_26_2014/Ceremony/diane_angel_gomez_nadine_jose_029.jpg')
                Photo.create!(
                  subalbum_id: 17, date_taken: Time.now,
                  file_name: 'diane_angel_gomez_nadine_jose_030.jpg',
                  thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/nadine_jose_aug_26_2014/Ceremony/diane_angel_gomez_nadine_jose_030.jpg',
                  medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/nadine_jose_aug_26_2014/Ceremony/diane_angel_gomez_nadine_jose_030.jpg',
                  image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/nadine_jose_aug_26_2014/Ceremony/diane_angel_gomez_nadine_jose_030.jpg')

                  Photo.create!(
                    subalbum_id: 18, date_taken: Time.now,
                    file_name: 'diane_angel_gomez_nadine_jose_031.jpg',
                    thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/nadine_jose_aug_26_2014/Reception/diane_angel_gomez_nadine_jose_031.jpg',
                    medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/nadine_jose_aug_26_2014/Reception/diane_angel_gomez_nadine_jose_031.jpg',
                    image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/nadine_jose_aug_26_2014/Reception/diane_angel_gomez_nadine_jose_031.jpg')
                  Photo.create!(
                    subalbum_id: 18, date_taken: Time.now,
                    file_name: 'diane_angel_gomez_nadine_jose_032.jpg',
                    thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/nadine_jose_aug_26_2014/Reception/diane_angel_gomez_nadine_jose_032.jpg',
                    medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/nadine_jose_aug_26_2014/Reception/diane_angel_gomez_nadine_jose_032.jpg',
                    image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/nadine_jose_aug_26_2014/Reception/diane_angel_gomez_nadine_jose_032.jpg')
                  Photo.create!(
                    subalbum_id: 18, date_taken: Time.now,
                    file_name: 'diane_angel_gomez_nadine_jose_033.jpg',
                    thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/nadine_jose_aug_26_2014/Reception/diane_angel_gomez_nadine_jose_033.jpg',
                    medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/nadine_jose_aug_26_2014/Reception/diane_angel_gomez_nadine_jose_033.jpg',
                    image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/nadine_jose_aug_26_2014/Reception/diane_angel_gomez_nadine_jose_033.jpg')
                  Photo.create!(
                    subalbum_id: 18, date_taken: Time.now,
                    file_name: 'diane_angel_gomez_nadine_jose_034.jpg',
                    thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/nadine_jose_aug_26_2014/Reception/diane_angel_gomez_nadine_jose_034.jpg',
                    medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/nadine_jose_aug_26_2014/Reception/diane_angel_gomez_nadine_jose_034.jpg',
                    image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/nadine_jose_aug_26_2014/Reception/diane_angel_gomez_nadine_jose_034.jpg')
                  Photo.create!(
                    subalbum_id: 18, date_taken: Time.now,
                    file_name: 'diane_angel_gomez_nadine_jose_035.jpg',
                    thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/nadine_jose_aug_26_2014/Reception/diane_angel_gomez_nadine_jose_035.jpg',
                    medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/nadine_jose_aug_26_2014/Reception/diane_angel_gomez_nadine_jose_035.jpg',
                    image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/nadine_jose_aug_26_2014/Reception/diane_angel_gomez_nadine_jose_035.jpg')
                  Photo.create!(
                    subalbum_id: 18, date_taken: Time.now,
                    file_name: 'diane_angel_gomez_nadine_jose_036.jpg',
                    thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/nadine_jose_aug_26_2014/Reception/diane_angel_gomez_nadine_jose_036.jpg',
                    medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/nadine_jose_aug_26_2014/Reception/diane_angel_gomez_nadine_jose_036.jpg',
                    image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/nadine_jose_aug_26_2014/Reception/diane_angel_gomez_nadine_jose_036.jpg')
                  Photo.create!(
                    subalbum_id: 18, date_taken: Time.now,
                    file_name: 'diane_angel_gomez_nadine_jose_037.jpg',
                    thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/nadine_jose_aug_26_2014/Reception/diane_angel_gomez_nadine_jose_037.jpg',
                    medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/nadine_jose_aug_26_2014/Reception/diane_angel_gomez_nadine_jose_037.jpg',
                    image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/nadine_jose_aug_26_2014/Reception/diane_angel_gomez_nadine_jose_037.jpg')
                  Photo.create!(
                    subalbum_id: 18, date_taken: Time.now,
                    file_name: 'diane_angel_gomez_nadine_jose_038.jpg',
                    thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/nadine_jose_aug_26_2014/Reception/diane_angel_gomez_nadine_jose_038.jpg',
                    medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/nadine_jose_aug_26_2014/Reception/diane_angel_gomez_nadine_jose_038.jpg',
                    image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/nadine_jose_aug_26_2014/Reception/diane_angel_gomez_nadine_jose_038.jpg')
                  Photo.create!(
                    subalbum_id: 18, date_taken: Time.now,
                    file_name: 'diane_angel_gomez_nadine_jose_039.jpg',
                    thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/nadine_jose_aug_26_2014/Reception/diane_angel_gomez_nadine_jose_039.jpg',
                    medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/nadine_jose_aug_26_2014/Reception/diane_angel_gomez_nadine_jose_039.jpg',
                    image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/nadine_jose_aug_26_2014/Reception/diane_angel_gomez_nadine_jose_039.jpg')
                  Photo.create!(
                    subalbum_id: 18, date_taken: Time.now,
                    file_name: 'diane_angel_gomez_nadine_jose_040.jpg',
                    thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/nadine_jose_aug_26_2014/Reception/diane_angel_gomez_nadine_jose_040.jpg',
                    medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/nadine_jose_aug_26_2014/Reception/diane_angel_gomez_nadine_jose_040.jpg',
                    image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/nadine_jose_aug_26_2014/Reception/diane_angel_gomez_nadine_jose_040.jpg')
                  Photo.create!(
                    subalbum_id: 18, date_taken: Time.now,
                    file_name: 'diane_angel_gomez_nadine_jose_041.jpg',
                    thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/nadine_jose_aug_26_2014/Reception/diane_angel_gomez_nadine_jose_041.jpg',
                    medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/nadine_jose_aug_26_2014/Reception/diane_angel_gomez_nadine_jose_041.jpg',
                    image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/nadine_jose_aug_26_2014/Reception/diane_angel_gomez_nadine_jose_041.jpg')
                  Photo.create!(
                    subalbum_id: 18, date_taken: Time.now,
                    file_name: 'diane_angel_gomez_nadine_jose_042.jpg',
                    thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/nadine_jose_aug_26_2014/Reception/diane_angel_gomez_nadine_jose_042.jpg',
                    medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/nadine_jose_aug_26_2014/Reception/diane_angel_gomez_nadine_jose_042.jpg',
                    image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/nadine_jose_aug_26_2014/Reception/diane_angel_gomez_nadine_jose_042.jpg')
                  Photo.create!(
                    subalbum_id: 18, date_taken: Time.now,
                    file_name: 'diane_angel_gomez_nadine_jose_043.jpg',
                    thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/nadine_jose_aug_26_2014/Reception/diane_angel_gomez_nadine_jose_043.jpg',
                    medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/nadine_jose_aug_26_2014/Reception/diane_angel_gomez_nadine_jose_043.jpg',
                    image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/nadine_jose_aug_26_2014/Reception/diane_angel_gomez_nadine_jose_043.jpg')
                  Photo.create!(
                    subalbum_id: 18, date_taken: Time.now,
                    file_name: 'diane_angel_gomez_nadine_jose_044.jpg',
                    thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/nadine_jose_aug_26_2014/Reception/diane_angel_gomez_nadine_jose_044.jpg',
                    medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/nadine_jose_aug_26_2014/Reception/diane_angel_gomez_nadine_jose_044.jpg',
                    image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/nadine_jose_aug_26_2014/Reception/diane_angel_gomez_nadine_jose_044.jpg')
                  Photo.create!(
                    subalbum_id: 18, date_taken: Time.now,
                    file_name: 'diane_angel_gomez_nadine_jose_045.jpg',
                    thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/nadine_jose_aug_26_2014/Reception/diane_angel_gomez_nadine_jose_045.jpg',
                    medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/nadine_jose_aug_26_2014/Reception/diane_angel_gomez_nadine_jose_045.jpg',
                    image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/nadine_jose_aug_26_2014/Reception/diane_angel_gomez_nadine_jose_045.jpg')
                  Photo.create!(
                    subalbum_id: 18, date_taken: Time.now,
                    file_name: 'diane_angel_gomez_nadine_jose_046.jpg',
                    thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/nadine_jose_aug_26_2014/Reception/diane_angel_gomez_nadine_jose_046.jpg',
                    medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/nadine_jose_aug_26_2014/Reception/diane_angel_gomez_nadine_jose_046.jpg',
                    image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/nadine_jose_aug_26_2014/Reception/diane_angel_gomez_nadine_jose_046.jpg')
                  Photo.create!(
                    subalbum_id: 18, date_taken: Time.now,
                    file_name: 'diane_angel_gomez_nadine_jose_047.jpg',
                    thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/nadine_jose_aug_26_2014/Reception/diane_angel_gomez_nadine_jose_047.jpg',
                    medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/nadine_jose_aug_26_2014/Reception/diane_angel_gomez_nadine_jose_047.jpg',
                    image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/nadine_jose_aug_26_2014/Reception/diane_angel_gomez_nadine_jose_047.jpg')
                  Photo.create!(
                    subalbum_id: 18, date_taken: Time.now,
                    file_name: 'diane_angel_gomez_nadine_jose_048.jpg',
                    thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/nadine_jose_aug_26_2014/Reception/diane_angel_gomez_nadine_jose_048.jpg',
                    medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/nadine_jose_aug_26_2014/Reception/diane_angel_gomez_nadine_jose_048.jpg',
                    image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/nadine_jose_aug_26_2014/Reception/diane_angel_gomez_nadine_jose_048.jpg')
                  Photo.create!(
                    subalbum_id: 18, date_taken: Time.now,
                    file_name: 'diane_angel_gomez_nadine_jose_049.jpg',
                    thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/nadine_jose_aug_26_2014/Reception/diane_angel_gomez_nadine_jose_049.jpg',
                    medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/nadine_jose_aug_26_2014/Reception/diane_angel_gomez_nadine_jose_049.jpg',
                    image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/nadine_jose_aug_26_2014/Reception/diane_angel_gomez_nadine_jose_049.jpg')
                  Photo.create!(
                    subalbum_id: 18, date_taken: Time.now,
                    file_name: 'diane_angel_gomez_nadine_jose_050.jpg',
                    thumb_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/nadine_jose_aug_26_2014/Reception/diane_angel_gomez_nadine_jose_050.jpg',
                    medium_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/nadine_jose_aug_26_2014/Reception/diane_angel_gomez_nadine_jose_050.jpg',
                    image_url: 'https://dl.dropboxusercontent.com/u/2330299/capstone/seed/Karen%20Ling/nadine_jose_aug_26_2014/Reception/diane_angel_gomez_nadine_jose_050.jpg')
