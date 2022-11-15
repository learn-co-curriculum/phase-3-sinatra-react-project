class User < ActiveRecord::Base
    has_many :reviews
    has_many :restaurants, through: :reviews

    has_many :followers, foreign_key: :follower_id, class_name: "Friendship"
    has_many :following, through: :followers

    has_many :following, foreign_key: :following_id, class_name: "Friendship"
    has_many :followers, through: :following
end