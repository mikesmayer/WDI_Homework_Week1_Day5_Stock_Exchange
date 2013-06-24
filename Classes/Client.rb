class Stock_Ledger #Acts as a "shelter" for the clients; could be replaced by the ability to list clients separately
  attr_accessor :client_list

  def initialize()
    @client_list = []
  end

  def add_client(client)
    client_list << client
  end

  def list_clients
    @client_list.each {|client| puts client}
  end
end

class Client
  attr_accessor :name, :balance, :portfolios, :portfolios_total_value

  def initialize(name, balance) ## Don't understand the last variable
    @name = name
    @balance = balance
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
      "#{@name} had an uninvested cash balance of #{@balance} dollars and has #{@portfolios.count} investment portfolios."
  end
end

## MOVED CLIENT INFORMATION TO THE MAIN.RB TAB