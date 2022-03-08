class User < ActiveRecord::Base
    has_many :comments
    has_many :posts, through: :comments
    belongs_to :comment
end