class Donation < ActiveRecord::Base
    belongs_to :user
    belongs_to :animal

    def self.top_donor 
        donor_list = self.all
            .group(:user_id)
            .order("total_donation DESC")
            .select("user_id, sum(amount) as total_donation")
        result = {**donor_list.first.user.attributes, "amount" => donor_list.first.total_donation}
    end

    def self.top_donee 
        donee_list = self.all
            .group(:animal_id)
            .order("total_donation DESC")
            .select("animal_id, sum(amount) as total_donation")
        result = {**donee_list.first.animal.attributes, "amount" => donee_list.first.total_donation}
    end

end