require 'pry'
require 'yahoofinance'

require_relative 'client'
require_relative 'portfolio'
require_relative 'trade'
require_relative 'stock'

##Begin back-end info for clients, portfolios

puts `clear`

ponzi_scheme = Stock_Ledger.new

ponzi_scheme.add_client Client.new("Bob", 50000, ['Bobs portfolio'])
ponzi_scheme.add_client Client.new("Mary", 50000, ['Marys portfolio'])
ponzi_scheme.add_client Client.new("Michael", 50000, ['Michaels portfolio'])
ponzi_scheme.add_client Client.new("Jim", 50000, ['Jims portfolio'])

don = Client.new("Don", 45000, ['Dons portfolio']) #To be added to client_list below

# s1 = Stock.new('AAPL',1)
# s2 = Stock.new('IBM',2)
#bobs_portfolio_1 = Portfolio.new("Bob",30000,[s1,s2])


#bobs_portfolio_1[:tech] = [s1, s2]

#puts bobs_portfolio_1[0]


#Begin story
puts "$$$ Welcome to Ponzi Financial, where the money flows freely! $$$"

puts "\nAs a prospective client, you may be wondering who are our existing clients."
puts "Our existing clients include:"
puts ""
puts ponzi_scheme.list_clients
puts "Are you interested in becoming a customer?"
puts "\nGreat, we will add your information to our client list"
ponzi_scheme.add_client don
puts "\nHere is the updated list of clients:"
puts ponzi_scheme.list_clients

puts "\nTell us a bit about the portfolio you would like to create"

don = Client.new("Don", 45000, ['Dons portfolio'])
don.portfolios[:portfolio_1] = Portfolio.new("Don", 10000)
don.portfolios[:portfolio_1].stocks << Stock.new('AAPL',5)

puts don.portfolios[:portfolio_1].list_portfolio.to_s

binding.pry

# mckibben_lofts = Building.new("38 McKibben St", "loft", false, false, 7)
# mckibben_lofts.apartments[:unit_a] = Apartment.new("A", 3200, 200, 1, 2)
# mckibben_lofts.apartments[:unit_b] = Apartment.new("B", 2800, 300, 1, 1)
# mckibben_lofts.apartments[:unit_a].renters << Person.new("David", 30, "male")
# mckibben_lofts.apartments[:unit_a].renters << Person.new("Samantha", 20, "female")
