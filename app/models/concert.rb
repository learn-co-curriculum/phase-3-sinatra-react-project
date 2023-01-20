class Concert < ActiveRecord::Base
    has_many :tickets
    has_many :users, through: :tickets
end