class Candle < ActiveRecord::Base
    has_many :user_candles
    has_many :users, through: :user_candles
    has_many :candle_scents
    has_many :scents, through: :candle_scents
end