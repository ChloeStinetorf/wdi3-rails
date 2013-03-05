class Mountain < ActiveRecord::Base
  attr_accessible :name, :image, :range, :country, :elevation
end