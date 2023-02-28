class Charity< ActiveRecord::Base
    has_many :Donation
    belongs_to :Charity

end