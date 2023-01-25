class Bar < ActiveRecord::Base
    has_many :reviews
    has_many :users, through: :reviews
    has_many :favorite_bars
    has_many :users, through: :favorite_bars
    has_many :bar_crawls
    has_many :users, through: :bar_crawls


    def star_average 
        self.reviews.average(:star_rating).to_f
    end

end