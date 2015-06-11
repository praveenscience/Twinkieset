# == Schema Information
#
# Table name: photos
#
#  id          :integer          not null, primary key
#  image_url   :string           not null
#  order       :float            default(0.0), not null
#  subalbum_id :integer          not null
#  created_at  :datetime
#  updated_at  :datetime
#

class Photo < ActiveRecord::Base
  belongs_to(
    :subalbum,
    class_name: 'Subalbum',
    foreign_key: :subalbum_id
  )
  has_one(
    :album,
    through: :subalbum,
    source: :album
  )
  has_one(
    :owner,
    through: :album,
    source: :owner
  )


  validates :image_url, :order, :subalbum_id, presence: true
end
