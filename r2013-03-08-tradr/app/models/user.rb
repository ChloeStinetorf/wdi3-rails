# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  name            :string(255)
#  password_digest :string(255)
#  email           :string(255)
#  balance         :decimal(, )
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class User < ActiveRecord::Base
  has_secure_password
  attr_accessible :name, :password, :password_confirmation, :email, :balance
  has_many :stocks, :inverse_of => :user

  def position
    self.stocks.map{|s| Stock.quote(s.symbol) * s.shares}.reduce(:+) || 0
  end

  def total
    self.balance + self.position
  end

# function with a question mark is boolean
  def has_enough_money?(symbol, shares)
    symbol = symbol.upcase
    # not finished yet....
  end
end


