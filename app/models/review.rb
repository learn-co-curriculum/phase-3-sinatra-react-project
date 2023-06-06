class Review < ActiveRecord::Base

    belongs_to :house
    belongs_to :user

end 