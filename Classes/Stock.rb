require 'yahoofinance'

class Stocks

  attr_reader :name
  attr_accessor :total_price, :num_of_shares

  def initialize(name, num_of_shares)
    @name = name
    @num_of_shares = num_of_shares
    @total_price = ( YahooFinance::get_quotes(YahooFinance::StandardQuote, @name)[@name].lastTrade ) * num_of_shares
  end

  def get_price
    @total_price = ( YahooFinance::get_quotes(YahooFinance::StandardQuote, @name)[@name].lastTrade ) * num_of_shares
    return @total_price
  end

  def get_share_price
    return YahooFinance::get_quotes(YahooFinance::StandardQuote, @name)[@name].lastTrade
  end

end

# class Stock
#   attr_reader :name
#   attr_accessor :price, :quantity
#   def initialize(name, quantity)
#     @name = name
#     @price = YahooFinance::get_quotes(YahooFinance::StandardQuote, @name)[@name].lastTrade
#     @quantity = quantity
#   end

#   def get_price
#     @price = YahooFinance::get_quotes(YahooFinance::StandardQuote, @name)[@name].lastTrade
#     return @price
#   end

#   def to_s
#     return "#{@quantity} shares of #{@name}, realtime-priced at $#{@price}"
#   end
# end

# def stock
# end

# def stock_result
#   stock = params[:stock].upcase
#   @stock = YahooFinance::get_quotes(YahooFinance::StandardQuote, "#{stock}")["#{stock}"].lastTrade
#   end

# end