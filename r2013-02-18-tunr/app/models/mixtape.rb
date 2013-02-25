# == Schema Information
#
# Table name: mixtapes
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Mixtape < ActiveRecord::Base
  attr_accessible :name, :user_id
  belongs_to :user, :inverse_of => :mixtapes
  has_and_belongs_to_many :songs
  validates :name, :uniqueness => true, :length => { :minimum => 1 }
end