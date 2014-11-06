# == Schema Information
#
# Table name: reviews
#
#  id         :integer          not null, primary key
#  rating     :integer
#  song_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Review < ActiveRecord::Base
  belongs_to :song
  attr_accessible :rating, :song_id
  
  # validates :rating, presence: true, numericality: {less_than: 5, message: "is no good"}
  # validates :song, presence: {message: "doesn't exist"}
  validates :song_id, presence: true
end
