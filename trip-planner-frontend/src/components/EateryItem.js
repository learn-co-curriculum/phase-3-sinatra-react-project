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
        <div>
                <div className="card listcard my-3 mx-4 concert-card">
                    <div className="card-body">
                        <p>{attraction.name}</p>
                        <p>Type: {attraction.cuisine_type}</p>
                        <p>Street Address: {attraction.address}</p>
                        {attraction["downtown?"] ? <p>Downtown</p> : <p>Not Downtown</p>}
                        <p>Rating: {"⭐️".repeat(attraction.rating)}</p>
                        <p>{attraction.rating} stars</p>
                        <button className="btn btn-success" onClick={() => handleStarClick(attraction)}>Add Star</button>
                        <br></br>
                        <button className='btn btn-danger delete' onClick={() => handleDelete(attraction)}>Delete</button>
                    </div>
                </div>
                </div>
    )
}

export default EateryItem