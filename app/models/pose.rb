class Pose < ActiveRecord::Base
    has_many :yoga_class_poses
    has_many :classes, through: :yoga_class_poses
end