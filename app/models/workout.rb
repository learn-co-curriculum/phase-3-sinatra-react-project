class Workout < ActiveRecord::Base
    has_many :exercises
    attribute :exercise, :string
end