# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  name            :string(255)
#  password_digest :string(255)
#  image           :text
#  bio             :text
#  address         :text
#  latitude        :float            default(0.0)
#  longitude       :float            default(0.0)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class User < ActiveRecord::Base
  has_secure_password
  attr_accessible :name, :password, :password_confirmation, :image, :bio, :address, :latitude, :longitude
  has_many :self_initiated, :class_name => 'Plan', :foreign_key => 'sender_id'
  has_many :other_initiated, :class_name => 'Plan', :foreign_key => 'receiver_id'

  before_save :geocode
  private
  def geocode
    result = Geocoder.search(self.address).first

    if result.present?
      self.latitude = result.latitude
      self.longitude = result.longitude
    end
  end
end
