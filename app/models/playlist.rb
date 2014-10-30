# == Schema Information
#
# Table name: playlists
#
#  id          :integer          not null, primary key
#  title       :string(255)
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Playlist < ActiveRecord::Base
  attr_accessible :description, :title
end
