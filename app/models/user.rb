class User < ActiveRecord::Base
    has_many :remembers
    has_many :categories, through: :remembers
end 