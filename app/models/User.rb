class User < ActiveRecord::Base
    has_many :matches
    has_many :receivers, through: :matches

    has_many :messages
    has_many :message_receivers, through: :messages
    
    has_one :current_user

    def self.age_pref(user_age, range)
        self.all.where("age > ?", user_age - range).where("age < ?", user_age + range)
    end

    def self.gender_pref interested_gender, my_sex
        self.all.where(gender: interested_gender).where("desired_sex = ? OR desired_sex = ?", my_sex, "all")
    end

    def unseen_users id
        #you want to get all users that aren't part of this user's receivers
        curr_receivers=self.find(id).receivers
        #curr_receivers is an array of all YOUR receivers. now, we need to filter the actual ALL users so that it only returns the users that aren't part of your receivers
        self.select{|user| !curr_receivers.includes user}
    end

end