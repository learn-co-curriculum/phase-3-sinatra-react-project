import React from 'react';

function ConcertItem({ attraction, handleDelete }) {
    return (
        <div className="card-deck col-sm-3 my-3">
                <div className="card" style={{height: '300px'}}>
                <div className="card-body">
                    <p className='card-title'>Date: {attraction.date}</p>
                    {attraction.band ? 
                        <div>
                            <p className='card-text'>Who's Playing: {attraction.band.name}</p>
                            <p className='card-text'>Genre: {attraction.band.genre}</p>
                        </div> : 
                        null
                    }
                    <p className='card-text'>Venue: {attraction.venue_name}</p>
                    <p className='card-text'>{attraction.venue_type}</p>
                    {/* <div className='card-footer'> */}
                        <button 
                            className='btn btn-danger' 
                            onClick={() => handleDelete(attraction)}
                        >
                            Delete
                        </button>
                    {/* </div> */}
                    </div>
                </div>
        </div>
    )
}

export default ConcertItem