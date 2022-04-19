class Doctor < ActiveRecord::Base
  has_many :appointments
  has_many :patients, through: :appointments
end
