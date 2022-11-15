class Friendship < ActiveRecord::Base
    belongs_to :follower, class_name: "User"
    belongs_to :following, class_name: "User"
end