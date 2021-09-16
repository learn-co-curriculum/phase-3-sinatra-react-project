# Student model code here
# Student has many labs

class Student < ActiveRecord::Base
    has_many :labs

    def get_labs_by_student
        labs
    end
end