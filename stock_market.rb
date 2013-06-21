# Yahoofinance gem -- needs to be built out further
require 'pry'
require 'yahoofinance'

#Classes
class Client
  attr_accessor :name, :age, :gender, :cash_balance, :portfolio
  def initialize(name, age, gender, cash_balance)
    @name = name
    @age = age
    @gender = gender
    @cash_balance = cash_balance #Balance that is not already in a portfolio
    @portfolio = {}
  end

  def to_s
    return "#{@name} is a #{@age} year old #{@gender}, with $#{@cash_balance} not already in a portfolio."
  end
end

class Portfolio
attr_accessor :investor, :strategy, :cash, :stocks
  def initialize(investor, strategy, cash)
    @investor = investor
    @strategy = strategy
    @cash = cash
    @stocks = {}
  end

  def to_s
    return "#{@investor} owns a a #{@strategy}-focused portfolio with $#{@cash} balance"
  end
end

class Stocks #INCOMPLETE
  attr_reader :name
  attr_accessor :price

  def Stocks.get(ticker)
    #insert functionality from yahoofinance
  end
end


#Don's info
don = Client.new("Don",40,"male",50000)
don.portfolio_1[:portfolio_1] = Portfolio.new("Don", "Money Laundering", 10000)
don.portfolio_2[:portfolio_2] = Portfolio.new("Don", "Wealth Preservation", 5000)
don.portfolio_1[:portfolio_1].stocks << Stocks.new###INCOMPLETE###
don.portfolio_1[:portfolio_2].stocks << Stocks.new###INCOMPLETE###

#Betty's info
betty = Client.new("Betty",40,"female",40000)
betty.portfolio_1[:portfolio_1] = Portfolio.new("Betty", "Diversified", 5000)
betty.portfolio_2[:portfolio_2] = Portfolio.new("Betty", "Secret", 5000)
betty.portfolio_1[:portfolio_1].stocks << Stocks.new###INCOMPLETE###
betty.portfolio_1[:portfolio_2].stocks << Stocks.new###INCOMPLETE###

#Betty's info
sally = Client.new("Sally",15,"female",5000)
sally.portfolio_1[:portfolio_1] = Portfolio.new("Sally", "College", 5000)
sally.portfolio_1[:portfolio_1].stocks << Stocks.new###INCOMPLETE###



###THINGS TO BUILD OUT###
#Ability to pull in stock information from yahoo finance gem (already installed)
#Subtract cash from user's portfolio balance
#Ability to sell stock
#LIst clients and their portfolio amounts
#List all stocks in a portfolio
#List all clients

