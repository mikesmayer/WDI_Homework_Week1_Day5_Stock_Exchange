class Portfolios

attr_accessor :client, :balance, :stocks, :position_in_shares, :position_in_value

  def initialize
    @client = []
    @balance = []
    @stocks = []
    @position_in_shares = []
    @position_in_value = []
  end

  def list_portfolio
  end

  def add_portfolio(portfolio)
    portfolios << portfolio
  end

  def delete_portfolio(portfolio_name)
    portfolios.delete(portfolio_name)
  end

end