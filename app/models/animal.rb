class Animal < ActiveRecord::Base
    belongs_to :user
    has_many :donations
    has_many :comments
    has_many :likes

    def self.get_detail (id)
        animal = self.find(id)
        animal_likes = animal.likes.size
        animal_total_donations = animal.donations.sum { |donation| donation.amount }
        if animal.user_id != nil 
            user_name = animal.user.name 
        end
        result = {**animal.attributes, "likes" => animal_likes, "donations" => animal_total_donations, "owner" => user_name}
        return result
    end
end