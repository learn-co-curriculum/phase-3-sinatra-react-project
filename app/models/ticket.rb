class Ticket < ActiveRecord::Base
    belongs_to :concert
    belongs_to :user
end