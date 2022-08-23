class Animal < ActiveRecord::Base
    belongs_to :user
    has_many :donations
    has_many :comments
    has_many :likes

    def self.get_detail (id)
        animal = self.find(id)
        animal_likes = animal.likes.size
        animal_total_donations = animal.donations.sum { |donation| donation.amount }
        result = {**animal.attributes, "likes" => animal_likes, "donations" => animal_total_donations}
        return result
    end
end