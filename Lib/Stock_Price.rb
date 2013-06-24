require 'yahoofinance'
require 'pry'

require_relative 'Client'
require_relative 'Portfolio'
require_relative 'Trades'

class Stock_Price

  attr_reader :ticker
  attr_accessor :total_price, :num_of_shares

  def initialize(ticker, num_of_shares)
    @ticker = ticker
  end

  def get_share_price
    return YahooFinance::get_quotes(YahooFinance::StandardQuote, @ticker)[@ticker].lastTrade
  end

end