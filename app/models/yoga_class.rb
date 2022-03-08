class Yoga_Class < ActiveRecord::Base
    has_many :yoga_class_poses
    has_many :poses, through: :yoga_class_poses
end