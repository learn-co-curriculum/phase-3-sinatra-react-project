class Review < ActiveRecord::Base
    belongs_to :critic
    belongs_to :movie

    def is_positive
        self.score_sentiment == "POSITIVE"
    end

    def is_negative
        self.score_sentiment == "NEGATIVE"
    end

end
