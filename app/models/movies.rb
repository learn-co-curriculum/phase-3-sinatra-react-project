class Movie < ActiveRecord::Base

    has_many :movie_selections
    has_many :profiles, through: :movie_selections

    has_many :characters
    has_many :actors, through: :characters

    def self.genres
        listOfGenres = self.all.pluck (:genre)
        listOfGenres.uniq
    end 

    def self.suggested
        self.all.sample(5)
    end 

end