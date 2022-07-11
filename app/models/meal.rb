class Meal < ActiveRecord::Base
    has_many :dishes
    has_many :days, through: :dishes

    # def remove_meal(dish)
    #     self.
    # end
end