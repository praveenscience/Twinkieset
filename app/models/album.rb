# == Schema Information
#
# Table name: albums
#
#  id              :integer          not null, primary key
#  title           :string           not null
#  event_date      :date             not null
#  cover_image_id  :integer
#  status          :string           default("draft"), not null
#  password_digest :string
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
    through: :subalbums,
    source: :photos
  )

  belongs_to(
    :cover_image,
    class_name: 'Photo',
    foreign_key: 'cover_image_id'
  )

  validates :title, :event_date, :status, :user_id, presence: true
  validates :title, uniqueness: { scope: :user_id,
    message: "You already have an album of the same name" }

  after_commit :create_highlights_subalbum

  def create_highlights_subalbum
    @subalbum = self.subalbums.create(title: "Highlights")
  end
end
