import React from 'react';

function EateryItem({ attraction, onUpdateObject }) {

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
                <div>
                    <p>{attraction.name}</p>
                    <p>{attraction.cuisine_type}</p>
                    <p>{attraction.address}</p>
                    {attraction["downtown?"] ? <p>Downtown</p> : <p>Not Downtown</p>}
                    <p>Rating: {"⭐️".repeat(attraction.rating)}</p>
                    <p>{attraction.rating} stars</p>
                    <button onClick={() => handleStarClick(attraction)}>Add Star</button>
                </div>
                <div>
                    ===================
                </div>
                </div>
    )
}

export default EateryItem