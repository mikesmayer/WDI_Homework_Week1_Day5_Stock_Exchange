## creates Portfolio class and two methods: add_portfolio and list_portfolios

class Stock_Ledger #Acts as a "shelter" for the clients; could be replaced by the ability to list clients separately
  attr_accessor :portfolio_roster

  def initialize()
    @portfolio_roster = {}
  end

  def add_portfolio(portfolio)
    portfolio_roster << portfolio
  end

  def list_portfolios
    @portfolio_roster.each {|portfolio| puts portfolio}
  end
end

class Portfolios
attr_accessor :portfolio
  def initialize()
    @portfolio = {}
  end

  def attach_client
    portfolio << client
  end

end

# ponzi_scheme = Stock_Ledger.new

# ponzi_scheme.add_portfolio Portfolio.new(1, "Bob", 50000, [1,2,3])
# ponzi_scheme.add_portfolio Portfolio.new("Mary", 50000, [11,22,33])
# ponzi_scheme.add_portfolio Portfolio.new("Michael", 50000, [111,222,333])
# ponzi_scheme.add_portfolio Portfolio.new("Jim", 50000, [1111,2222,3333])

# sally = Portfolio.new("Sally", 50000, [11111,222222,333333])
# puts "A client arrives."
# puts sally

# puts "\nShe wants to see the client list."
# ponzi_scheme.list_clients