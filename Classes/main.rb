require 'pry'
require 'yahoofinance'

require_relative 'client'
require_relative 'portfolio'
require_relative 'trade'
require_relative 'stock'

##Begin back-end info for clients, portfolios

puts `clear`

ponzi_scheme = Stock_Ledger.new ##Creates "shelter" for clients to go into

#Initial clients
bob = Client.new("Bob", 50000)
mary = Client.new("Mary", 45000)

#Adding initial clients to ponzi_scheme client "shelter"
ponzi_scheme.add_client bob
ponzi_scheme.add_client mary

#Initial clients portfolios
bob.portfolios[:portfolio_1] = Portfolio.new("Bob's Industrial Portfolio", 10000)
bob.portfolios[:portfolio_1].stocks << Stock.new('BA',14)
bob.portfolios[:portfolio_1].stocks << Stock.new('FDX',15)
bob.portfolios[:portfolio_2] = Portfolio.new("Bob's Energy Stocks", 10000)
bob.portfolios[:portfolio_2].stocks << Stock.new('XOM',40)

mary.portfolios[:portfolio_1] = Portfolio.new("Mary's Financial Services Portfolio", 10000)
mary.portfolios[:portfolio_1].stocks << Stock.new('UBS',1)
mary.portfolios[:portfolio_1].stocks << Stock.new('GS',35)
mary.portfolios[:portfolio_1].stocks << Stock.new('MS',55)
mary.portfolios[:portfolio_1].stocks << Stock.new('WF',34)

#Begin story
puts "$$$ Welcome to Ponzi Financial, where the money flows freely! $$$"

puts "\nAs a prospective client, you may be interested in learning about our existing clients."
puts "\nOur existing clients include:"
puts ""
ponzi_scheme.list_clients

puts "\nHere at Ponzi Financial, ethics are a low priority."
puts "\nTo that extent, here is an overview of Bob's portfolios:"
puts ""

puts bob.portfolios[:portfolio_1]
bob.portfolios[:portfolio_1].stocks.each {|stock| puts stock}
puts ""

puts bob.portfolios[:portfolio_2].to_s
bob.portfolios[:portfolio_2].stocks.each {|stock| puts stock}

puts "\nAnd here is an overview of Mary's portfolio:"
puts mary.portfolios[:portfolio_1].to_s
mary.portfolios[:portfolio_1].stocks.each {|stock| puts stock}

puts "\nAre you interested in becoming a customer?"
puts "\nGreat, we will add your information to our client list"

don = Client.new("Don", 45000) #Don's initial information
ponzi_scheme.add_client don

puts "\nHere is the updated list of clients:"
ponzi_scheme.list_clients

puts "\nTell us a bit about the portfolio you would like to create"

don.portfolios[:portfolio_1] = Portfolio.new("Don", 10000)
don.portfolios[:portfolio_1].stocks << Stock.new('AAPL',5)
don.portfolios[:portfolio_1].stocks << Stock.new('IBM',5)

don.portfolios[:portfolio_1].stocks.each {|stock| puts stock}

puts "Okay, we can arrange that"
puts ""



#binding.pry

