class Trades

  attr_accessor :stock_symb, :num_of_shares, :cost_per_share, :portfolio_name

  def initialize
    @stock_symb = []
    @num_of_shares = []
    @portfolio_name = []
    @buy_sell = []
  end


  end

  def buy(stock_symb, num_of_shares, portfolio_name)
    # if stock is already in portfolio, assign it to stock variable
    if portfolios[portfolio_name].has_stock?(stock_symb)
      stock = portfolios[portfolio_name].stocks[stock_symb]
      cost = stock.get_share_price * num_of_shares

    # otherwise, create a new Stock object
    else
      stock = Stock.new(stock_symb, num_of_shares)
      cost = stock.total_price
    end

    if cost > @balance
      puts "Transaction cannot be completed. The client does not have enough money."
    else
      @balance -= cost

      # Note: I don't like this line much because in the case where a new
      # Stock object was created, num_of_shares is entirely redundant
      portfolios[portfolio_name].add_stock(stock, num_of_shares)
    end
  end

  def sell_stock(portfolio_name, stock_symb, num_of_shares)
    if portfolios[portfolio_name].hasStock?(stock_symb)
      if num_of_shares <= portfolios[portfolio_name].stocks[stock_symb].num_of_shares
        portfolios[portfolio_name].stocks[stock_symb].num_of_shares -= num_of_shares
        income = 0
        stocks.each do |stock|
          income += stock.get_price * num_of_shares
        end
        @balance += income
      else
        puts "The client does not have enough stock to sell."
      end
    else
      puts "The client doesn't own any of that stock."
    end
  end

end