class AdoptionApplication < ActiveRecord::Base
    belongs_to :animal

    def animal_name
        animal.name
    end
end