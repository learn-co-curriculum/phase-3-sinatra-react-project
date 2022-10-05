class Place < ActiveRecord::Base
    has_many :reviews
    has_many :users, through: :reviews

    #orders it from the highest to lowest star rating
    # def self.favorite_place
    #     order(:star_rating)
    # end
    #returns place that is the cheapest
    def self.cheapest
        order(:price)
    end
    #returns place thats most expensive
    def self.fanciest
        order(:price).reverse
    end
    #returns array of reviews
    def all_reviews
        reviews.map {|review| "Review for #{self.name} by #{review.user.name}: #{review.star_rating} stars."}
    end

    #sort by category
    def self.category_sort(category)
        where(category: category)
    end
end
