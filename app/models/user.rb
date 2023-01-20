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
        tickets_to_concert = tickets.where(concert_id: concert.id)
        if tickets_to_concert.length < 1
            puts "#{self.name} owns no tickets to this concert."
            return 0
        end

        if tickets_to_concert.length < num_tickets
            puts "Refunding #{tickets_to_concert.length} tickets owned insead of requested #{num_tickets}."
            num_tickets = tickets_to_concert.length
        end

        for i in 0..num_tickets-1 do
            Ticket.destroy(tickets_to_concert[i].id)
        end

        Concert.update(concert.id, :unsold_tickets => concert.unsold_tickets+num_tickets)
        puts "Your #{num_tickets} tickets to #{concert.artist} on #{concert.date} have been successfully refunded."
        return 1
    end
end