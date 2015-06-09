# == Schema Information
#
# Table name: albums
#
#  id              :integer          not null, primary key
#  title           :string           not null
#  event_date      :date             not null
#  cover_image_id  :integer
#  status          :string           default("draft"), not null
#  password_digest :string           not null
#  category        :string
#  user_id         :integer          not null
#  created_at      :datetime
#  updated_at      :datetime
#

class Album < ActiveRecord::Base
  belongs_to(
    :owner,
    class_name: 'User',
    foreign_key: :user_id,
    dependent: :destroy
  )

  has_many(
    :subalbums,
    class_name: 'Subalbum',
    foreign_key: :album_id
  )

  has_many(
    :photos,
    through: :subalbums
  )
  
  validates :title, :event_date, :status, :password_digest, :user_id, presence: true
  validates :title, uniqueness: { scope: :user_id,
    message: "You already have an album of the same name" }
end
