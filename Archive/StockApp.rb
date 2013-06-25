require 'pry'

require_relative 'client'
require_relative 'portfolio'
require_relative 'trades'
require_relative 'stock_price'

puts "Welcome to WDI Stock Trading Terminal"


  puts "Please type the number correspnding to the menu item you would like to selection: "
  puts "A - See a list of all clients"
  puts "B - Add a new client"
  puts "C - Create a new portfolio and starter balance"

  manager_menu_selection = gets.chomp

case manager_menu_selection
 when "A"
   Stock_Ledger.list_clients
 when "B"
  Stock_Ledger.add_client
 # else "C"
 #  Stock_Ledger.add_portfolio
end

