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

stock3 = Stock.create(
    ticker: "INTC",
    company: "Intel Corp"
)

stock4 = Stock.create(
    ticker: "TSLA",
    company: "Tesla"
)

stock5 = Stock.create(
    ticker: "T",
    company: "AT&T"
)

stock6 = Stock.create(
    ticker: "GOOG",
    company: "Google Class C"
)

stock7 = Stock.create(
    ticker: "AMZN",
    company: "Amazon"
)

stock8 = Stock.create(
    ticker: "META",
    company: "META Platforms"
)

stock9 = Stock.create(
    ticker: "PFE",
    company: "Pfizer Inc"
)

stock10 = Stock.create(
    ticker: "COST",
    company: "Costco Wholesale Corporation"
)

stock11 = Stock.create(
    ticker: "KO",
    company: "Coca-Cola Company"
)


stock12 = Stock.create(
    ticker: "NKE",
    company: "Nike, Inc"
)


stock13 = Stock.create(
    ticker: "ADBE",
    company: "Adobe Inc"
)


stock14 = Stock.create(
    ticker: "UPS",
    company: "United Parcel Service"
)


stock15 = Stock.create(
    ticker: "MS",
    company: "Morgan Stanley Common Stock"
)


stock16 = Stock.create(
    ticker: "QCOM",
    company: "QUALCOMM Incorporated"
)


stock17 = Stock.create(
    ticker: "NFLX",
    company: "Netflix, Inc"
)


stock18 = Stock.create(
    ticker: "IBM",
    company: "International Business Machines Corporation"
)


stock19 = Stock.create(
    ticker: "GS",
    company: "Goldman Sachs Group, Inc"
)

stock20 = Stock.create(
    ticker: "AMD",
    company: "Advanced Micro Devices"
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
