class Profile < ActiveRecord::Base 
    has_many :likes 
    has_many :users, through: :likes

    def self.unswiped_profiles
        unswiped_profiles = Profile.select {|prof| prof.swipe_status == false}
        unswiped_profiles
    end
end