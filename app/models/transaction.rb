class Transaction < ActiveRecord::Base
    belongs_to :buyer
    belongs_to :car
end