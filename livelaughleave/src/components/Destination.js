import React from 'react'

function Destination({destination}){

 
    console.log(destination)
 
    return(
        <li className="card">
            <div className="image">
                <img src={destination.image} alt="image"/>
                <h4>{destination.name}</h4>
            </div>
        </li>
    )
}

export default Destination