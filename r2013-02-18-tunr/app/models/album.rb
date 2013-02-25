# == Schema Information
#
# Table name: albums
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  image      :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Album < ActiveRecord::Base
  attr_accessible :name, :image, :song_ids, :artist_ids
  has_many :songs
  has_many :artists, :through => :songs
  has_and_belongs_to_many :users
  validates :image, :presence => true
  validates :name, :length => { :minimum => 2 }
end
