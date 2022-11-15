class Post < ActiveRecord::Base
    has_many :comments
    has_many :commented_users, through: :comments

    has_many :users_posts
    has_many :users, through: :users_posts

end 