class Destination < ActiveRecord::Base
    has_many :activities, dependent: :destroy
    has_many :travelers, through: :activities

end