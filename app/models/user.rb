class User < ActiveRecord::Base
  has_many :reviews
  has_many :restaurants, through: :reviews
  has_many :followers, foreign_key: :follower_id, class_name: 'Friend'
  has_many :followees, through: :followers
  has_many :followees, foreign_key: :followee_id, class_name: 'Friend'
  has_many :followers, through: :followees
end
