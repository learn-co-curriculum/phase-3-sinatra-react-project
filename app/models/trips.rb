class Trip < ActiveRecord::Base
    belongs_to :traveler
    has_many :days, dependent: :destroy

    def self.get_all
        self.all.includes(:days).includes(:activities)
    end
end