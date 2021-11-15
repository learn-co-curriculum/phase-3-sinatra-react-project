class Subscriber < ActiveRecord::Base

    belongs_to :newsletter
    belongs_to :customer

end