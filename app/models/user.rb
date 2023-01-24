class User < ActiveRecord::Base
    has_many :queues
    has_many :movies, through: :queues
end