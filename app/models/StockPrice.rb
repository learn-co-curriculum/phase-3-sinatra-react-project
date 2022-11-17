class StockPrice < ActiveRecord::Base 
    belongs_to :stock

    # def self.display_by_change_point
    #     StockPrice.all.order(:change_point)
    # end
end