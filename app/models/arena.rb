class Arena < ActiveRecord::Base

    has_many :events
    has_many :characters, through: :events


end