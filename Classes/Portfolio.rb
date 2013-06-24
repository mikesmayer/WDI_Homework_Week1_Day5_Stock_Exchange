class Stock_Ledger #Acts as a "shelter" for the clients; could be replaced by the ability to list clients separately
  attr_accessor :client_list

  def initialize()
    @portfolio_list = []
  end

  def add_portfolio(portfolio)
    portfolio_list << portfolio
  end

  def list_portfolios
    @portfolio_list.each {|portfolio| puts portfolio}
  end
end

class Portfolio
attr_accessor :id, :client, :ticker, :position_in_shares, :mark_to_market_value
  def initialize(id, client, ticker, position_in_shares, mark_to_market_value)
    @id = id
    @client = client #hardcoded for now
    @ticker = []
    @position_in_shares = []
    @mark_to_market_value = []
  end

  def list_portfolio
    puts "The portfolio contains the following securities:"
    @portfolio.each {|portfolio| puts portfolio}
  end

  def add_portfolio(portfolio)
    portfolios << portfolio ##NOPE - shovels portfolio into portfolios array in Client.rb
  end

  def delete_portfolio(portfolio_name) #Do we need this functionality?
    portfolios.delete(portfolio_name)
  end

  def attach_client
    client_name << client
  end

end

ponzi_scheme = Stock_Ledger.new

ponzi_scheme.add_portfolio Portfolio.new(1, "Bob", 50000, [1,2,3])
ponzi_scheme.add_portfolio Portfolio.new("Mary", 50000, [11,22,33])
ponzi_scheme.add_portfolio Portfolio.new("Michael", 50000, [111,222,333])
ponzi_scheme.add_portfolio Portfolio.new("Jim", 50000, [1111,2222,3333])

sally = Portfolio.new("Sally", 50000, [11111,222222,333333])
puts "A client arrives."
puts sally

puts "\nShe wants to see the client list."
ponzi_scheme.list_clients