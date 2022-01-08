class Match < ActiveRecord::Base
    belongs_to :user
    belongs_to :pet

    # def get_pet_id
    #     self.pet_id.map { |k, v| [v.to_integer] }
    # end
end