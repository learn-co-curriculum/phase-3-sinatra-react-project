import React from 'react'
import SearchFilter from './SearchFilter'
import OrderBy from './OrderBy'
import DestinationCards from './DestinationCards'

function DestinationsContainer({search, handleSearch}) {
  return (
    <div>
      <SearchFilter search={search} handleSearch={handleSearch}/>
      <OrderBy/>
      <DestinationCards/>
    </div>
  )
}

export default DestinationsContainer