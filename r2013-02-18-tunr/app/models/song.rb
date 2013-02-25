# == Schema Information
#
# Table name: songs
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  image      :string(255)
#  filename   :string(255)
#  artist_id  :integer
#  album_id   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  cost       :decimal(, )      default(1.0)
#

class Song < ActiveRecord::Base
  attr_accessible :name, :image, :filename, :artist_id, :album_id, :cost, :genre_ids, :mixtape_ids
  belongs_to :artist, :inverse_of => :songs
  belongs_to :album, :inverse_of => :songs
  has_and_belongs_to_many :mixtapes
  has_and_belongs_to_many :genres
  validates :cost, :numericality => { :greater_than => 0 }
  validates :name, :uniqueness => true, :presence => true
end
