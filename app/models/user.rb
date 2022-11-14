class User < ActiveRecord::Base
    has_many :user_candles
    has_many :candles, through: :user_candles
end