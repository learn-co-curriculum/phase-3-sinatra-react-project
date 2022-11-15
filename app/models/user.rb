class User < ActiveRecord::Base

    has_many :comments
    has_many :commented_posts, through: :comments

    has_many :users_posts
    has_many :posts, through: :users_posts

    has_secure_password
end 