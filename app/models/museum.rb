class Museum < ActiveRecord::Base
    belongs_to :city
    has_many :visits
end