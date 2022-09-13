import React from 'react';
import ListItem from './ListItem';


function AttractionList({availableCities, displayData}) {
    console.log(displayData)
    return (
        <div>
            <select>
                <option>All</option>
                {availableCities.map((city)=> <option value={city.name}>{city.name}</option>)}
            </select>
            <div>
                {displayData.map((attraction) => <ListItem attraction={attraction}/>)}
            </div>
        </div>
    )
}

export default AttractionList