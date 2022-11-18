import React from 'react';

function EateryItem({ attraction, onUpdateObject, handleDelete }) {

    function handleStarClick(attraction) {
        console.log(attraction.rating)
        fetch(`http://localhost:9292/eateries/${attraction.id}`, {
            method: 'PATCH',
            headers: { 'Content-Type' : 'application/json'},
            body: JSON.stringify({rating: attraction.rating + 1})
        })
        .then((res) => res.json())
        .then(updatedObj => updateObject(updatedObj))
    }

    function updateObject(updatedObj) {
        onUpdateObject(updatedObj)
    }

    return (
        <div className="card-deck col-sm-3 my-3">
            <div className="card" style={{height: '360px'}}>
                <div className="card-body">
                    <p className='card-title'>{attraction.name}</p>
                    <p className='card-text'>Type: {attraction.cuisine_type}</p>
                    <p className='card-text'>Street Address: {attraction.address}</p>
                    {attraction["downtown?"] ? <p className='card-text'>Downtown</p> : <p>Not Downtown</p>}
                    <p className='card-text'>Rating: {"⭐️".repeat(attraction.rating)}</p>
                    {/* <p className='card-text'>{attraction.rating} stars</p> */}
                    <div>
                        <button 
                            className='btn btn-success my-2' 
                            onClick={() => handleStarClick(attraction)}
                        >
                            Add Star
                        </button>
                    </div>
                    {/* <br/> */}
                    <div>
                        <button 
                            className='btn btn-danger'
                            onClick={() => handleDelete(attraction)}
                        >
                            Delete
                        </button>
                    </div>
                </div>
            </div>
        </div>
    )
}

export default EateryItem