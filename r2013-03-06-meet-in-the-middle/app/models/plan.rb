# == Schema Information
#
# Table name: plans
#
#  id          :integer          not null, primary key
#  sender_id   :integer
#  receiver_id :integer
#  address     :text
#  latitude    :float            default(0.0)
#  longitude   :float            default(0.0)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Plan < ActiveRecord::Base
  attr_accessible :address, :latitude, :longitude
  belongs_to :sender, :class_name => 'User', :foreign_key => 'sender_id'
  belongs_to :receiver, :class_name => 'User', :foreign_key => 'receiver_id'

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
