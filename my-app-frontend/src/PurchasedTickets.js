import React from "react"

function PurchasedTickets({person, concertList}) {
    return (
        <div>
            <ul>Purchased Tickets:
                {person.tickets.map((ticket) => (
                    <li>
                        Artist: {concertList.filter((concert) => (concert.id === ticket.concert_id))[0].artist}, 
                        Date: {concertList.filter((concert) => (concert.id === ticket.concert_id))[0].date}, 
                        Ticket ID: {ticket.id}
                    </li>
                ))}
            </ul>
        </div>
    )
}

export default PurchasedTickets;