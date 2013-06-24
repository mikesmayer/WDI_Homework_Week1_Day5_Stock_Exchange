require 'pry'

require './Client'
require './Portfolio'
require './Trades'
require './Stock_Price'

## creates client class and two methods: add_client and list_clients

class Ledger #Acts as a "shelter" for the clients; could be replaced by the ability to list clients separately
  attr_accessor :ledger

  def initialize()
    @ledger = {}
  end

  def add_client(client)
    ledger << client
  end

  def list_clients
    @ledger.each {|client| puts client}
  end

  def add_portfolio(portfolio)
    ledger << portfolio
  end

  def list_portfolios
    @ledger.each {|portfolio| puts portfolio}
  end

end