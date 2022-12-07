import React from 'react'

function Destination({destination}){

 
    console.log(destination)
 
    return(
        
            <div className="card">
                <img src={destination.image} alt="image"/>
                <h4>{destination.name}</h4>
                <p>{destination.review}</p>
            
            </div>
       
    )
}

export default Destination