import React from 'react'
import SearchFilter from './SearchFilter'
import OrderBy from './OrderBy'
import DestinationCards from './DestinationCards'

function DestinationsContainer() {

  return (
    <div>
      <SearchFilter/>
      <OrderBy/>
      <DestinationCards/>
    </div>
  )
}

export default DestinationsContainer