# == Schema Information
#
# Table name: songs
#
#  id         :integer          not null, primary key
#  title      :string(255)
#  length     :time
#  album_id   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Song < ActiveRecord::Base
  belongs_to :album
  has_many :reviews
  
  # validates :album_id, presence: true
  # validates :album, presence: {message: "doesn't exist"}
  attr_accessible :length, :title, :album_id
end
