class Therapist < ActiveRecord::Base
    has_many :clients
end