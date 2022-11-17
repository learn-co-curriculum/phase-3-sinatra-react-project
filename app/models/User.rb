class User < ActiveRecord::Base 
    has_many :userstocks_joins
    has_many :stocks, through: :userstocks_joins

    has_one :watchlist 

    def portfolio 
        user_obj = self.attributes
        stocksArray = self.stocks.select('stocks.id, stocks.ticker, stocks.company, count(userstocks_joins.id) as count')
        .group('stocks.id').map do |stock| 
            {id: stock.id, ticker: stock.ticker, company: stock.company, count: stock.count} 
        end
        # binding.pry
        user_obj[:portfolio] = stocksArray
        user_obj
    end
    
    # self.stocks.select('stocks.id, stocks.ticker, stocks.company, count(userstocks_joins.id) as count')
    #     .group('stocks.id').map do |stock| 
    #         {id: stock.id, ticker: stock.ticker, company: stock.company, count: stock.count} 
    #     end
end