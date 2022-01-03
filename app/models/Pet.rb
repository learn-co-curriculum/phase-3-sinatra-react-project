class Pet < ActiveRecord::Base
    belongs_to :household
    has_many :users, through: :household
    has_many :tasks
end