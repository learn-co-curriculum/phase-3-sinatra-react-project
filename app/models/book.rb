class Book < ActiveRecord::Base
    has_many :reviews
end