class Owner < ActiveRecord::Base

    has_many    :units
    has_many    :maintenancerequests, through: :units











#
end