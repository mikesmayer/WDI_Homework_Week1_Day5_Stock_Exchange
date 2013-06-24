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
  attr_accessor :client_name, :balance, :portfolios, :portfolios_total_value

  def initialize(name, balance, portfolios) ## Don't understand the last variable
    @client_name = client_name
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
      "#{@client_name} had an uninvested cash balance of #{@balance} dollars and has #{@portfolios.count} investment portfolios."
  end
end

ponzi_scheme = Stock_Ledger.new

ponzi_scheme.add_client Client.new("Bob", 50000, [1,2,3])
ponzi_scheme.add_client Client.new("Mary", 50000, [11,22,33])
ponzi_scheme.add_client Client.new("Michael", 50000, [111,222,333])
ponzi_scheme.add_client Client.new("Jim", 50000, [1111,2222,3333])

sally = Client.new("Sally", 50000, [11111,222222,333333])
puts "A client arrives."
puts sally

puts "\nShe wants to see the client list."
ponzi_scheme.list_clients