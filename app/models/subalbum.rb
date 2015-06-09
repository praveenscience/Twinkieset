# == Schema Information
#
# Table name: subalbums
#
#  id         :integer          not null, primary key
#  title      :string           not null
#  order      :float            default(0.0), not null
#  album_id   :integer          not null
#  created_at :datetime
#  updated_at :datetime
#

class Subalbum < ActiveRecord::Base
  validates :title, :order, :album_id, presence: true
  validates :title, uniqueness: { scope: :album_id,
    message: "This album already has a subalbum of the same name" }
end
