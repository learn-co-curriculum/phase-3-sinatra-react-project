import React from 'react'
import Destination from './Destination'

function DestinationList({destinations}) {


    return(
    <>
    {destinations.map(destination => <Destination key={destination.id} destination={destination}/>)}
    </>
    )
}

export default DestinationList
