require 'pry'

require_relative 'client'
require_relative 'portfolio'
require_relative 'trades'
require_relative 'stock_price'

puts "Welcome to WDI Stock Trading Terminal"

puts "To begin, please type 1 for Client Menu or 2 for Manager Menu"

menu_selection = gets.chomp.to_i

if menu_selection == 1

  puts "Please type the number correspnding to the menu item you would like to selection: "
  puts "1 - See a list of all clients"
  puts "2 - Add a new client"
  puts "3 - Create a new portfolio and starter balance"

  manager_menu_selection = gets.chomp.to_i

case manager_menu_selection
 when 1
   Stock_Ledger.list_clients
 when 2
  Stock_Ledger.add_client
 when 3
  Stock_Ledger
 end manager_menu_selection

elsif menu_selection == 2

  puts "Please type the number correspnding to the menu item you would like to selection: "
  puts "1 - Create a portfolio"
  puts "2 - Purchase stocks"
  puts "3 - Sell stocks"
  puts "4 - See a list of your portfolios"
  puts "5 - See your current stock positions in a portfolios"

  client_menu_selection = gets.chomp.to_i

  if client_menu_selection == 1

    puts "LIST OF CLIENT NAMES"

    client_name = gets.chomp.to_s

    [is CLIENT NAME valid]

    puts "What is the name of your portfolio?"

    portfolio_name = gets.chomp.to_s

    portfolio_name.save

  elsif client_menu_selection == 2

    trade = []

    puts "What is the symbol of the stock you want to trade?"

    trade_symbol = gets.chomp

    puts "The market price of a share of #{@sym_name} is #{@pps}"

    puts "How many shares would you like to purchase?"

    shares_purchased = gets.chomp

    puts "Great, the total value of this trade is #{trade_value} and this will be deducted from your account."

    if @account_balance >= 0

      puts "Your account balance following this trade will be #{account_balance}"

    elsif @account_balance < 0

      puts "Your account does not have enough funds to buy these shares. GO GET A JOB!"

    end

  elsif client_menu_selection == 3

    Push a stock sale (Add proceeds into his account).

  elsif client_menu_selection == 4

    Puts "list of a client's portfolio."

  elsif client_menu_selection == 5

    Puts "list of stocks in a given portfolio."

  end

else

  puts "Thanks for using WDI Stock Trading Terminal. Please come again!"

end

