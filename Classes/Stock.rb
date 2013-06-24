require 'yahoofinance'

class Stock

  attr_reader :ticker
  attr_accessor :total_price, :num_of_shares

  def initialize(ticker, num_of_shares)
    @ticker = ticker
    @num_of_shares = num_of_shares
    @total_price = ( YahooFinance::get_quotes(YahooFinance::StandardQuote, @ticker)[@ticker].lastTrade ) * num_of_shares
  end

  def get_price
    @total_price = ( YahooFinance::get_quotes(YahooFinance::StandardQuote, @ticker)[@ticker].lastTrade ) * num_of_shares
    return @total_price
  end

  def get_share_price
    return YahooFinance::get_quotes(YahooFinance::StandardQuote, @ticker)[@ticker].lastTrade
  end

  def to_s
    "#{@num_of_shares} shares of #{@ticker}, currently priced at #{get_share_price} each"
  end


end

# class Stock
#   attr_reader :ticker
#   attr_accessor :price, :quantity
#   def initialize(ticker, quantity)
#     @ticker = ticker
#     @price = YahooFinance::get_quotes(YahooFinance::StandardQuote, @ticker)[@ticker].lastTrade
#     @quantity = quantity
#   end

#   def get_price
#     @price = YahooFinance::get_quotes(YahooFinance::StandardQuote, @ticker)[@ticker].lastTrade
#     return @price
#   end

#   def to_s
#     return "#{@quantity} shares of #{@ticker}, realtime-priced at $#{@price}"
#   end
# end

# def stock
# end

# def stock_result
#   stock = params[:stock].upcase
#   @stock = YahooFinance::get_quotes(YahooFinance::StandardQuote, "#{stock}")["#{stock}"].lastTrade
#   end

# end