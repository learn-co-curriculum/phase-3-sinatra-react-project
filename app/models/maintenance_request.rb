class MaintenanceRequest < ActiveRecord::Base

    belongs_to :unit
    has_many :owners, through: :units











#
end