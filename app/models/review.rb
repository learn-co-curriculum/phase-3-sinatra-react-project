class Review < ActiveRecord::Base
    belongs_to :food
    def self.by_rating
        all.order(rating: :asc)
      end
end