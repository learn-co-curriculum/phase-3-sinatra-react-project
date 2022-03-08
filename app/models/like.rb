class Like < ActiveRecord::Base
    belongs_to :profile
    belongs_to :user

    def self.matching_profiles
        user_likes = Like.select {|prof| prof.user_like == true}
        matches = user_likes.select {|target| target.profile_like == true}
        matches
    end
    
    def self.like_function(user, profile)
        if Like.exists?(:user_id => user.id, :profile_id => profile.id)
            interaction = Like.find_by(user_id: user.id, profile_id: profile.id)
            interaction.update(:user_like => true)
        else 
            Like.create(user_id: user.id, profile_id: profile.id, user_like: true, profile_like: nil)
        end
    end

    def self.dislike_function(user, profile)
        if Like.exists?(:user_id => user.id, :profile_id => profile.id)
            interaction = Like.find_by(user_id: user.id, profile_id: profile.id)
            interaction.update(:user_like => false)
        else 
            Like.create(user_id: user.id, profile_id: profile.id, user_like: false, profile_like: nil)
        end
    end

    def self.undo_function(user, profile)

        interaction = Like.find_by(user_id: user.id, profile_id: profile.id)

        if interaction.profile_like == nil
            interaction.destroy
        else 
            interaction.update(user_like: nil)
        end
    end
end