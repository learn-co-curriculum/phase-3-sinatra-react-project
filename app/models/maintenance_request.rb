class MaintenanceRequest < ActiveRecord::Base

    belongs_to :unit
    has_many :owners, through: :units


    def self.open_requests
        self.all.where(open_request?: true)
    end








#
end