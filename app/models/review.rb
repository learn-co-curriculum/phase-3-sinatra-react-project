class Review < ActiveRecord::Base
    belongs_to :menu_item
    def self.by_rating
        all.order(rating: :asc)
      end
end