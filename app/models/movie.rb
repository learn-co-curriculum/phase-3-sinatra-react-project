class Movie < ActiveRecord::Base
    has_many :queues
    has_many :users, through: :queues
end 