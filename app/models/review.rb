class Review < ActiveRecord::Base
    belongs_to :place
    belongs_to :user

    def full_review
        "Review for '#{place.name}' by #{user.name}: #{self.star_rating} stars and says '#{self.review}.'"
    end
end