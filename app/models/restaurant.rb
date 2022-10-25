class Restaurant < ActiveRecord::Base
    has_many :reviews
    has_many :users, through: :reviews
end