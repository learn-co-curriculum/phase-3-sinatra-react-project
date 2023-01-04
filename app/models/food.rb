class Food < ActiveRecord::Base
    has_many :reviews
end