# == Schema Information
#
# Table name: subalbums
#
#  id         :integer          not null, primary key
#  title      :string           not null
#  order      :float            not null
#  album_id   :integer          default(0), not null
#  created_at :datetime
#  updated_at :datetime
#

class Subalbum < ActiveRecord::Base
end
