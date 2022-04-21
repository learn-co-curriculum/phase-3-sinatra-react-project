class Patient < ActiveRecord::Base
  has_many :appointments
  has_many :doctors, through: :appointments

  normalize_blank_values
end
