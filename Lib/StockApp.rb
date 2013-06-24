require 'pry'

require_relative 'Client'
require_relative 'Portfolio'
require_relative 'Trades'
require_relative 'Stock_Price'

puts 'Welcome to WDI Stock Trading Terminal'

  puts 'Please type the number correspnding to the menu item you would like to selection: '
  puts '1 - See a list of all clients'
  puts '2 - Add a new client'
  puts '3 - Create a new portfolio and starter balance'

  manager_menu_selection = gets.chomp

case manager_menu_selection
 when 1
   Stock_Ledger.list_clients
 when 2
  Stock_Ledger.add_client
 when 3
  Stock_Ledger.add_portfolio
  else
    puts 'Thanks for coming—come again!'
end

