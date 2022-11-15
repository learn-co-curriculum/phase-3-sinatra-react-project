require 'rest-client'
require 'uri'
require 'net/http'
require 'openssl'
require 'json'


class Stock < ActiveRecord::Base 
    has_many :userstocks_joins
    has_many :users, through: :userstocks_joins

    has_one :stock_price
    has_many :watchstocks_joins
    has_many :watchlists, through: :watchstocks_joins

    def self.rufus 
        Thread.new do
            while true do
            #   puts Time.now # or call tick function
            self.get_prices
              sleep 300
            end
          end
    end

    def self.get_prices 
        # RestClient.get "https://realstonks.p.rapidapi.com/MSFT", {params: {"X-RapidAPI-Key": 'ab374665bcmsh92ed2158f215048p1aa847jsn19f4e7b22952', "X-RapidAPI-Host": 'realstonks.p.rapidapi.com'}}
        # RestClient.get "https://realstonks.p.rapidapi.com/MSFT", {params: {"X-RapidAPI-Key": 'ab374665bcmsh92ed2158f215048p1aa847jsn19f4e7b22952', "X-RapidAPI-Host": 'realstonks.p.rapidapi.com'}}
        # RestClient.get "https://realstonks.p.rapidapi.com/MSFT", {params: {"X-RapidAPI-Key": ENV['RAPI_KEY']}}
        puts 'Updating Prices...'
        stocks = Stock.all
        tickers = stocks.map {|stock| stock.ticker}

        stocks.each do |stock|

            url = URI("https://realstonks.p.rapidapi.com/#{stock.ticker}")
    
            http = Net::HTTP.new(url.host, url.port)
            http.use_ssl = true
            http.verify_mode = OpenSSL::SSL::VERIFY_NONE
    
            request = Net::HTTP::Get.new(url)
            request["X-RapidAPI-Key"] = 'ab374665bcmsh92ed2158f215048p1aa847jsn19f4e7b22952'
            request["X-RapidAPI-Host"] = 'realstonks.p.rapidapi.com'
    
            response = http.request(request)
            stock_price = JSON.parse(response.body)
            stock.stock_price.destroy if stock.stock_price
            stock.create_stock_price(stock_price)
            # binding.pry
            
        end
        puts "Prices Updated"

    end
end