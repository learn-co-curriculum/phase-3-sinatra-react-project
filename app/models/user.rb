class User < ActiveRecord::Base
    has_many :suggestions
    has_many :scores

    def recent_scores
        scores_array = self.scores.all.limit(3)
        return_hash = Hash.new
        scores_array.each_with_index.map do |game, i| 
            return_hash[i] = (
                {:word => game.word.game_word,
                :date => game.created_at.strftime( "%m/%d/%Y" ),
                :score => game.session_score,
                :guesses => game.guesses}
            )
            
        end
        return_hash
        # binding.pry
    end
end