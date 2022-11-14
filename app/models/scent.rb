class Scent < ActiveRecord::Base
    has_many :candle_scents
    has_many :candles, through: :candle_scents
end