class Review < ActiveRecord::Base
    has_many :albums
    has_many :bands, through: :albums
end