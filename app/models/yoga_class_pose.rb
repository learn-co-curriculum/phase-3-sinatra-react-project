class Yoga_Class_Pose < ActiveRecord::Base
    belongs_to :pose
    belongs_to :yoga_class
end