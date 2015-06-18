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

  STATUS_TYPES = %w(Draft Published)
  belongs_to(
    :owner,
    class_name: 'User',
    foreign_key: :user_id
  )

  has_many(
    :subalbums,
    class_name: 'Subalbum',
    foreign_key: :album_id,
    dependent: :destroy
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

  default_scope { order('event_date DESC') }
  validates :title, :event_date, :status, :user_id, :album_session_token, presence: true
  validates :title, uniqueness: { scope: :user_id,
    message: "You already have an album of the same name" }
  validates :album_session_token, uniqueness: true
  validates :status, inclusion: STATUS_TYPES

  after_initialize :ensure_album_session_token
  after_create :create_highlights_subalbum

  def ensure_album_session_token
    self.album_session_token ||= SecureRandom::urlsafe_base64
  end

  def reset_album_session_token!
    self.album_session_token = SecureRandom::urlsafe_base64
    self.save!
    self.session_token
  end

  def password=(password)
    @password = password
    self.password_digest = BCrypt::Password.create(password)
  end

  def is_password?(password)
    BCrypt::Password.new(self.password_digest).is_password?(password)
  end


  def self.find_by_credentials(id, password)
    if password == ""
      return nil
    end
    album = Album.find(id)
    album && album.is_password?(password) ? album : nil
  end

  def create_highlights_subalbum
    @subalbum = self.subalbums.create(title: "Highlights")
  end
end
