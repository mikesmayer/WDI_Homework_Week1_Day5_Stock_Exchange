class Portfolio

attr_accessor :client, :balance , :stocks #, :position_in_shares, :position_in_value

  def initialize(client, balance, stocks)
    @client = client #hardcoded for now
    @balance = balance #hardcoded for now
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

  def delete_portfolio(portfolio_name) #Do we need this functionality?
    portfolios.delete(portfolio_name)
  end
end

