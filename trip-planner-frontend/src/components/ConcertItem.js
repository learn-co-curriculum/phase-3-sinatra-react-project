import React from 'react';

function ConcertItem({ attraction }) {
    return (
        <div>
                <div>
                    <p>{attraction.date}</p>
                    {attraction.band ? 
                        <div>
                            <p>{attraction.band.name}</p>
                            <p>Genre: {attraction.band.genre}</p>
                        </div> : 
                        null
                    }
                    <p>{attraction.venue_name}</p>
                    <p>{attraction.venue_type}</p>
                </div>
                <div>
                    ===================
                </div>
                </div>
    )
}

export default ConcertItem