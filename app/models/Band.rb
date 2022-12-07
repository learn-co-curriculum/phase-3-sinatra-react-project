class Band < ActiveRecord::Base
    has_many :albums
    has_many :reviews, through: :albums
end