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

require 'test_helper'

class PlaylistTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  
  test "should not allow paylist with the same name" do
    
    playlist = Playlist.new(title: "Christmas")
    assert !playlist.save, "Playlist has the same name"
  end
  
end
