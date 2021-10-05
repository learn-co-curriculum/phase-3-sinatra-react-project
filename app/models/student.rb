class Student < ActiveRecord::Base
    has_many :matches
    has_many :tutors, through: :matches
end