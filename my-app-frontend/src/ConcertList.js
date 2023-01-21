import React from "react";

function ConcertList({concertList, currentPerson, setConcertList, setCurrentPerson}) {
    function handlePurchase(purchasedConcert) {
        if(purchasedConcert.unsold_tickets < 1) {
          return
        }

        let newTicket = {
          id: Math.floor(Math.random() * 100000) + 1,
          concert_id: purchasedConcert.id,
          user_id: currentPerson.id
        }

        fetch("http://localhost:9292/tickets", {
          method: 'POST',
          headers: {
            "Content-Type": 'application/json',
          },
          body: JSON.stringify({
            id: newTicket.id,
            concert_id: newTicket.concert_id,
            user_id: newTicket.user_id,
          }),
        })
        .then((r) => r.json())
        .then((t) => newTicket = t);

        console.log(newTicket)
        let updatedCurrentPerson = currentPerson
        updatedCurrentPerson.tickets = [...currentPerson.tickets, newTicket]
        setCurrentPerson(updatedCurrentPerson)  

        let updatedConcertList = concertList
        updatedConcertList[concertList.indexOf(purchasedConcert)].unsold_tickets -= 1
        let unsold_tickets = updatedConcertList[concertList.indexOf(purchasedConcert)].unsold_tickets
        setConcertList([...updatedConcertList])

        fetch(`http://localhost:9292/concerts/${purchasedConcert.id}`, {
          method: 'PATCH',
          headers: {
            "Content-Type": 'application/json',
          },
          body: JSON.stringify({
            unsold_tickets: unsold_tickets,
          }),
        })
        .then((r) => r.json())
        .then((newConcert) => console.log(newConcert)); 
        
    }

    return (
    <div>
        <ul>
            Available Tickets:
            {concertList.map((concert) => (
            <li>
                Artist: {concert.artist}, 
                Date: {concert.date}, 
                Ticket Left: {concert.unsold_tickets} ==>
                <button type="click" onClick={(e) => handlePurchase(concert)}>Purchase</button>
            </li>))}
        </ul>
    </div>
    );
  }

export default ConcertList;