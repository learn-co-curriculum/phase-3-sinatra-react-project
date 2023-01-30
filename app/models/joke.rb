class Joke < ActiveRecord::Base
    has_many :comments

    def display_dad_joke 
        "Dad Jokes:\n #{self.joke}"
    end



    def self.best_jokes 
        best_jokes = self.all.where(:rating >= 5)
    end
end