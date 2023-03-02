class Charity < ActiveRecord::Base
    has_many :donations
    belongs_to :category

    def total
        # get all donations
        donations = Donation.all
        # get amount for each donation
        quantity_array = donations.pluck(:quantity)
        # return sum of the above amounts
        quantity_array.sum
    end

    def count
        # get length of donations array
        donations = Donation.all
        donations.count
    end
end