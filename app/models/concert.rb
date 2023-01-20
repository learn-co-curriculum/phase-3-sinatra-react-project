class Concert < ActiveRecord::Base
    has_many :tickets
    has_many :users, through: :tickets

    def sold_out?
        return self.unsold_tickets <= 0
    end
end