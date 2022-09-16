import React from 'react';

function ConcertItem({ attraction, handleDelete }) {
    return (
        <div className="card listcard my-3 mx-4 concert-card">
                <div className="card-body">
                    <p>Date: {attraction.date}</p>
                    {attraction.band ? 
                        <div>
                            <p>Who's Playing: {attraction.band.name}</p>
                            <p>Genre: {attraction.band.genre}</p>
                        </div> : 
                        null
                    }
                    <p>Venue: {attraction.venue_name}</p>
                    <p>{attraction.venue_type}</p>
                </div>
                <button className='btn btn-danger delete' onClick={() => handleDelete(attraction)}>Delete</button>
        </div>
    )
}

export default ConcertItem