# == Schema Information
#
# Table name: artists
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  nationality :string(255)
#  dob         :date
#  movement    :string(255)
#  image       :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Artist < ActiveRecord::Base
  attr_accessible :name, :nationality, :dob, :movement, :image
  has_many :paintings
end
