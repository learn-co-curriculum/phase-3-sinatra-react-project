class Task < ActiveRecord::Base
    belongs_to :household
    belongs_to :user
    belongs_to :pet
end