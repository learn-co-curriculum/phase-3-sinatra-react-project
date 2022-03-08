class Like < ActiveRecord::Base
    belongs_to :profile
    belongs_to :user

    def self.matching_profiles
        user_likes = Like.select {|prof| prof.user_like == true}
        matches = user_likes.select {|target| target.profile_like == true}
        matches
    end
end