class Charity < ActiveRecord::Base
    has_many :donations
    belongs_to :category

    def total
        # get all donations
        # get amount for each donation
        # return sum of the above amounts
    end

    def count
        # get length of donations array
    end
end