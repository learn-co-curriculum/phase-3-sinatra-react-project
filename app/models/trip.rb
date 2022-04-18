class List < ActiveRecord::Base
    has_many :museums
    has_many :cities, through: :museums
end