require_relative 'client'
require_relative 'main'
require_relative 'trade'
require_relative 'stock'

class Portfolio
  attr_accessor :client, :balance , :stocks #, :position_in_shares, :position_in_value
  def initialize(client, balance)
    @client = client #hardcoded for now
    @balance = balance #hardcoded for now, consider making it dynamic w/ method for market cap
    @stocks = []
   # @position_in_shares = []
   # @position_in_value = []
  end

  def list_portfolio
    puts "The portfolio contains the following securities:"
    @stocks.each {|stock| puts stock}
  end

  def add_portfolio(portfolio)
    portfolios << portfolio ##shovels portfolio into portfolios array in Client.rb
  end

  def to_s
    "#{@client}, with an uninvested balance of #{@balance} and investments in the following stocks:"
  end
end