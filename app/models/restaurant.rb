class Restaurant < ActiveRecord::Base
    has_many :reviews
    has_many :favorites
end