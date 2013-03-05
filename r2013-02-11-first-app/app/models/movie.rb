class Movie < ActiveRecord::Base
  attr_accessible :in_theatres, :other, :released, :title
end
