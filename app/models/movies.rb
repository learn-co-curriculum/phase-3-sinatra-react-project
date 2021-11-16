class Movie < ActiveRecord::Base

    has_many :movie_selections
    has_many :profiles, through: :movie_selections

    has_many :characters
    has_many :actors, through: :characters

end