class User < ActiveRecord::Base
    has_many :tickets
    has_many :concerts, through: :tickets

    def print_tickets
        puts "#{self.name} has purchased tickets for the following events:"
        tickets.each do |t|
            t.print_details
        end
    end

    def purchase_tickets(concert, num_tickets)
        if concert.sold_out?
            puts "Sorry! This concert is sold out."
            return 0
        end

        if num_tickets > concert.unsold_tickets
            puts "Purchasing all #{concert.unsold_tickets} tickets remaining instead of requested #{num_tickets}."
            num_tickets = concert.unsold_tickets
        end

        for i in 1..num_tickets do
            Ticket.create(user_id: self.id, concert_id: concert.id)
        end

        Concert.update(concert.id, :unsold_tickets => concert.unsold_tickets-num_tickets)
        puts "Congratulations! You have purchased #{num_tickets} tickets to #{concert.artist} on #{concert.date}."
        return 1
    end

    def refund_tickets(concert, num_tickets)
        return 1
    end
end