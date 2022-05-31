class User < ActiveRecord::Base
    has_many :posts
    has_many :products
    
    validates :name, presence: true
end