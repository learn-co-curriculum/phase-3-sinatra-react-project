class Unit < ActiveRecord::Base

    has_many  :owners
    has_many  :maintenancerequests
    #should these both be belongs_to ?








#
end