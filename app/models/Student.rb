# Student model code here
# Student has many labs

class Student < ActiveRecord::Base
    has_many :labs

end