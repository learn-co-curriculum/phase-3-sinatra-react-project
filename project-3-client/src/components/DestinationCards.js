import React from 'react'
import Destination from './Destination'

function DestinationCards({destinations}) {
  const eachDestination = destinations.map((destination) => (
    <Destination destination={destination} key={destination.id}/>
  ));
  
  return (
    <div>{eachDestination}
    </div>
  )
}

export default DestinationCards