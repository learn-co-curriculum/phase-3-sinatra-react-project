class Location < ActiveRecord::Base
    has_many :reviews
    has_many :characters, through: :reviews

    def average_rating
        self.reviews.sum(:rating) / self.reviews.length.to_f
    end
end