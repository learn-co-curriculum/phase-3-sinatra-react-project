class Actor < ActiveRecord::Base
    has_many :roles
    has_many :movies, through: :roles

    def actor_score
        score = 0
        if movies.count > 0
            score = movies.map{|movie| movie.critics_score}.sum / movies.count
        end
        score
    end

    def is_top_actor
        actor_score > Movie.average_score
    end

    def is_flop_actor
        actor_score < Movie.average_score
    end

    def self.top_actors
        self.all.filter{|actor| actor.is_top_actor}
    end
    
    def self.flop_actors
        self.all.filter{|actor| actor.is_flop_actor}
    end

    def self.sort_by_filmography_count
        self.all.sort_by{|actor| actor.filmography_count}
    end

    def average_positive_review_ratio
        ratio = 0
        if movies.count > 0
            ratio = movies.map {|movie| movie.positive_review_ratio}.sum / movies.count
        end
        ratio
    end

    def self.sort_by_avergage_positive_review_ratio
        self.all.sort_by {|actor| actor.average_positive_review_ratio}
    end

end
