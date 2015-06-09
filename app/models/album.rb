# == Schema Information
#
# Table name: albums
#
#  id              :integer          not null, primary key
#  title           :string           not null
#  event_date      :date             not null
#  cover_image_id  :integer          not null
#  status          :string           default("draft"), not null
#  password_digest :string           not null
#  category        :string
#  user_id         :integer          not null
#  created_at      :datetime
#  updated_at      :datetime
#

class Album < ActiveRecord::Base
end
