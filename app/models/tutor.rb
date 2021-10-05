class Tutor < ActiveRecord::Base
    has_many :matches
    has_many :students, through: :matches
end