class CandleScent < ActiveRecord::Base
    belongs_to :candle
    belongs_to :scent
end