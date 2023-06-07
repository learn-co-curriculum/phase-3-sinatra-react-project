class Workout < ActiveRecord::Base
    has_many :exercises
end