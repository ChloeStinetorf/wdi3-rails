# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  name            :string(255)
#  password_digest :string(255)
#  email           :string(255)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class User < ActiveRecord::Base
  has_secure_password
  attr_accessible :name, :password, :password_confirmation, :email
  has_many :exercises, :inverse_of => :user
  validates :name, :uniqueness => true, :length => { :minimum => 2 }
  validates :email, :uniqueness => true, :length => { :minimum => 7 }
end
