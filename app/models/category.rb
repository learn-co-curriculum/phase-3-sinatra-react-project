class Category < ActiveRecord::Base
    has_many :remembers
    has_many :users, through: :remembers
end 