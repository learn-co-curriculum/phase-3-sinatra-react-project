puts "Destroying all data"

User.destroy_all
Stock.destroy_all
WatchstocksJoin.destroy_all
UserstocksJoin.destroy_all
StockPrice.destroy_all
Watchlist.destroy_all

puts "🌱 Seeding spices..."




# Seed your database here
# create users

require 'uri'
require 'net/http'
require 'openssl'


#create stock1

stock1 = Stock.create(
    ticker: "AAPL",
    company: "Apple"
)

#create stock1 prices
# StockPrice.create(
#     current_price: rand(1..500),
#     stock_id: stock1.id
# )

#create stock2
stock2 = Stock.create(
    ticker: "MSFT",
    company: "Microsoft"
)

#create stock2 prices

# StockPrice.create(
#     current_price: rand(1..500),
#     stock_id: stock2.id
# )

Stock.get_prices

10.times do
    user = User.create(
        user_name: Faker::Name.name,
        password: 123,
        balance: rand(1..100000000)
    )

    watchlist = Watchlist.create(
        user_id: user.id
    )

    WatchstocksJoin.create(
        watchlist_id: watchlist.id,
        stock_id: 1
    )

    WatchstocksJoin.create(
        watchlist_id: watchlist.id,
        stock_id: 2
    )

    rand(1..5).times do
        UserstocksJoin.create(
            user_id: user.id,
            stock_id: Stock.all.ids.sample
        )
    end
end







puts "✅ Done seeding!"
