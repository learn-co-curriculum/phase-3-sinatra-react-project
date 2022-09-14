import React from 'react';

function EateryItem({ attraction }) {
    return (
        <div>
                <div>
                    <p>{attraction.name}</p>
                    <p>{attraction.cuisine_type}</p>
                    <p>{attraction.address}</p>
                    {attraction["downtown?"] ? <p>Downtown</p> : <p>Not Downtown</p>}
                </div>
                <div>
                    ===================
                </div>
                </div>
    )
}

export default EateryItem