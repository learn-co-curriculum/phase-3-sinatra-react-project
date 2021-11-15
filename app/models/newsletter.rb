class Newsletter < ActiveRecord::Base

    has_many :subscribers
    has_many :customers, through: :subscribers

end