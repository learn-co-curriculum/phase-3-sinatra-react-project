class User < ActiveRecord::Base
    has_many :matches
    has_many :profiles, through: :matches

    def all_matches
        self.matches.where(swipe_user: true, swipe_profile: true).collect do |match|
            match.profile.name
        end
    end
end