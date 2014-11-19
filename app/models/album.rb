# == Schema Information
#
# Table name: albums
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  price      :float
#  release    :date
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Album < ActiveRecord::Base
  attr_accessible :name, :price, :release
  
  validates :price, :presence => true
  # validates :name, :length => {:minimum => 2}
  # validates :name, length: {maximum: 5}
  # validates :price, numericality: {greater_than: 3, even:true}
  
  has_many :songs
  has_many :reviews, through: :songs
end
