class Movie < ActiveRecord::Base
    has_many :reviews
    has_many :critics, through: :reviews
    has_many :roles
    has_many :actors, through: :roles
end
