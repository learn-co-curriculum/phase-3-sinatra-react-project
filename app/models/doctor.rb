class Doctor < ActiveRecord::Base
  has_many :appointments
  has_many :patients, through: :appointments

  normalize_blank_values
end
