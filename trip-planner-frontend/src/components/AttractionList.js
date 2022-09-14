import React from 'react';
import ConcertItem from './ConcertItem.js';
import EateryItem from './EateryItem.js';


function AttractionList({availableCities, displayData, attractionType}) {
    // console.log(displayData)
    return (
        <div>
            <select>
                <option>All</option>
                {availableCities.map((city)=> <option key={city.id} value={city.name}>{city.name}</option>)}
            </select>
            <div>
                {attractionType === "concerts" ? <h3>Concerts</h3> : <h3>Eateries</h3>}
                {displayData.map((attraction) => {
                    return (attractionType === "concerts" ?
                        <ConcertItem attraction={attraction} key={attraction.id}/> 
                        : 
                        <EateryItem attraction={attraction} key={attraction.id}/> 
                    )
                })}
            </div>
        </div>
    )
}

export default AttractionList