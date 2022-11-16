class Destination < ActiveRecord::Base
    belongs_to :continent
    has_many :reviews
    has_many :users, through: :reviews

    def number_of_reviews
        self.reviews.count
    end

    # def self.by_amount_of_reviews
    #     self.order(Destination.first.reviews.count)
    # end

    # def self.by_date_of_creation
    #     self.order(:create_at)
    # end
end