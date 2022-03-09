class Movie < ActiveRecord::Base
    has_many :reviews, dependent: :destroy
    has_many :critics, through: :reviews
    has_many :roles
    has_many :actors, through: :roles

    def self.most_popular
        self.all.max_by{|film| film.reviews.length}
    end

    def self.highest_score
        self.all.max_by{|movie| movie.critics_score}
    end

    def self.average_score
        score = 0
        if self.all.cout > 0
            score = self.all.map{|movie| movie.critics_score}.sum / self.all.count
        end
        score
    end

    def self.top_movies
        avg = self.average_score
        self.all.filter{|movie| movie.critics_score > avg}
    end

    def self.flop_movies
        avg = self.average_score
        self.all.filter{|movie| movie.critics_score < avg}
    end

    def positive_reviews
        reviews.filter {|review| review.is_positive}
    end

    def negative_reviews
        reviews.filter {|review| review.is_negative}
    end

    def positive_review_ratio
        ratio = 0
        if positive_reviews.count > 0 || negative_reviews.count > 0
            ratio = 100 * positive_reviews.count / (positive_reviews.count + negative_reviews.count)
        end
        ratio
    end

end
