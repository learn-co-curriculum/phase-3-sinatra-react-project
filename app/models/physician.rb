class Physician < ActiveRecord::Base 
    has_many :patients, through: :appointments






end