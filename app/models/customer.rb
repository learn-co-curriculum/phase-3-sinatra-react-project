class Customer < ActiveRecord::Base

    has_many :subscribers
    has_many :newsletters, through: :subscribers

end