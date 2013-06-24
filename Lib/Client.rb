require 'pry'

require './Ledger'
require './Portfolio'
require './Trades'
require './Stock_Price'

## creates client class and two methods: add_client and list_clients

class Client
  attr_accessor :client_name, :portfolios

  def initialize(name) ## Don't understand the last variable
    @client_name = client_name
    @portfolios = {}
    # @portfolios_total_value = update_total_portfolios_value ##??
  end

  # def update_total_portfolios_value
  #     total_value = 0
  #     portfolios.each do |portfolios|
  #       total_value += portfolios.calculate_value
  #     end
  # end

  def to_s
      "#{@client_name} has #{@portfolios} and #{@portfolios.count} investment portfolios."
  end
end
