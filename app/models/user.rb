class User < ActiveRecord::Base
    has_many :jokes
    has_many :comments, through: :users
end