import React from 'react'
import Destination from './Destination'

function DestinationCards({ destinations, handleDelete}) {
  const eachDestination = destinations.map((destination) => (
    <Destination destination={destination} key={destination.id} handleDelete={handleDelete}/>
  ))
  return (
    <div>{eachDestination}</div>
  )
}

export default DestinationCards