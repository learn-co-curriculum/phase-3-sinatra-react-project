import React from 'react';
import ListItem from './ListItem';


function AttractionList({availableCities, displayData, attractionType}) {
    console.log(displayData)
    return (
        <div>
            <select>
                <option>All</option>
                {availableCities.map((city)=> <option value={city.name}>{city.name}</option>)}
            </select>
            <div>
                {attractionType === "concerts" ? <h3>Concerts</h3> : <h3>Eateries</h3>}
                {displayData.map((attraction) => <ListItem attraction={attraction} attractionType={attractionType}/>)}
            </div>
        </div>
    )
}

export default AttractionList