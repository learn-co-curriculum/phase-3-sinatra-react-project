class User < ActiveRecord::Base
    has_many :matches
    has_many :receivers, through: :matches

    # has_many :messages
    # has_many :message_receivers, through: :messages
    
    has_one :current_user

    def self.age_pref(user_age, range)
        self.all.where("age > ?", user_age - range).where("age < ?", user_age + range)
    end

    def self.gender_pref interested_gender, my_sex
        self.all.where(gender: interested_gender).where("desired_sex = ? OR desired_sex = ?", my_sex, "All")
    end

end