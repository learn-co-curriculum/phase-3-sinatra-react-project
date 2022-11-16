class Destination < ActiveRecord::Base
    belongs_to :continent
    has_many :reviews
    has_many :users, through: :reviews
end