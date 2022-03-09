class Movie < ActiveRecord::Base
    has_many :reviews, dependent: :destroy
    has_many :critics, through: :reviews
    has_many :roles
    has_many :actors, through: :roles

    def self.most_popular
        self.all.max_by{|film| film.reviews.length}
    end
end
