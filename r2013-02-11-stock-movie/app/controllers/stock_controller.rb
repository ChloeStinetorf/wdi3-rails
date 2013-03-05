class StockController < ApplicationController

  def price
  end

  def new
  end

  def price
    symbol = params[:symbol]
    if !symbol.nil?
      @symbol = symbol.upcase
      @quote = YahooFinance::get_quotes(YahooFinance::StandardQuote, @symbol)[@symbol].lastTrade.round(2)
    end
  end

end
