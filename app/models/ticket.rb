class Ticket < ActiveRecord::Base
    belongs_to :concert
    belongs_to :user

    def print_details
        puts "#{concert.artist}, #{concert.date}."
    end
end