# == Schema Information
#
# Table name: words
#
#  id             :integer          not null, primary key
#  value          :string(255)
#  declaration_id :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  index          :integer
#

class Word < ActiveRecord::Base
  attr_accessible :value, :index
  belongs_to :declaration
end
