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
  validates :image_url, :order, :subalbum_id, presence: true
end
