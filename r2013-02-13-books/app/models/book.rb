# == Schema Information
#
# Table name: books
#
#  id         :integer          not null, primary key
#  title      :string(255)
#  image      :text
#  year       :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  author_id  :integer
#

class Book < ActiveRecord::Base
  attr_accessible :title, :image, :year, :author_id
  belongs_to :author
end
