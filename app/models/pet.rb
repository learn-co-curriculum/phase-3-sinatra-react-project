class Pet < ActiveRecord::Base
    belongs_to :user
    belongs_to :creatures
end