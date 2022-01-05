class User < ActiveRecord::Base
    has_many :matches
    has_many :pets, through: :matches

    def user_match(pet_id)
        Match.create(user_id: self.id, pet_id: pet_id)
    end

    


end