# == Schema Information
#
# Table name: stocks
#
#  id         :integer          not null, primary key
#  symbol     :string(255)
#  shareprice :float
#  user_id    :integer
#  shares     :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Stock < ActiveRecord::Base
  attr_accessible :symbol, :shareprice, :user_id, :shares
  belongs_to :user, :inverse_of => :stocks

  def Stock.quote(symbol)
    symbol = symbol.upcase
    YahooFinance::get_quotes(YahooFinance::StandardQuote, symbol)[symbol].lastTrade
  end

  private

end


