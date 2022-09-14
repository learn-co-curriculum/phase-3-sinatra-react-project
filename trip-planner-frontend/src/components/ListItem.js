import React from 'react';

function ListItem({attraction, attractionType}) {
    console.log(attraction)
    console.log(attractionType)
    debugger
    return (
        <div>
            {attractionType === "concerts" ? 
               <div>
                <div>
                    <p>{attraction.date}</p>
                    {/* {console.log((attraction.band).name)} */}
                    <p>{attraction.band.name}</p>
                    <p>Genre: {attraction.band.genre}</p>
                    <p>{attraction.venue_name}</p>
                    <p>{attraction.venue_type}</p>
                </div>
                <div>
                    ===================
                </div>
                </div>
                : 
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
                </div>}
        </div>
    )
}

export default ListItem