require 'pry'

require './Ledger'
require './Client'
require './Portfolio'
require './Trades'
require './Stock_Price'

#####SEED DATA#####

ponzi_scheme = Ledger.new

ponzi_scheme.add_client Client.new("Bob")
ponzi_scheme.add_client Client.new("Mary")
ponzi_scheme.add_client Client.new("Michael")
ponzi_scheme.add_client Client.new("Jim")

# sally = Client.new("Sally")
# puts "A client arrives."
# puts sally

# puts "\nShe wants to see the client list."
# ponzi_scheme.list_clients

#####APPLICATION#####

puts 'Welcome to WDI Stock Trading Terminal'

  puts 'Please type the number correspnding to the menu item you would like to selection: '
  puts 'A - See a list of all clients'
  puts 'B - Add a new client'
  puts 'C - Create a new portfolio and starter balance'

  manager_menu_selection = gets.chomp

case manager_menu_selection
 when "A"
   ponzi_scheme.list_clients
 when "B"
  ponzi_scheme.add_client
 when "C"
  ponzi_scheme.add_portfolio
  else
    puts 'Thanks for coming—come again!'
end

