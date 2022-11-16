import React from 'react'
import SearchFilter from './SearchFilter'
import OrderBy from './OrderBy'
import DestinationCards from './DestinationCards'

function DestinationsContainer({ destinations, setDestinations, search, handleSearch, removeDestination}) {

  function handleDelete(id) {
    fetch(`http://localhost:9292/destinations/${id}`, {
      method: "DELETE",
    }).then(() => removeDestination(id));
  }

  return (
    <div>
      <SearchFilter search={search} handleSearch={handleSearch}/>
      <OrderBy/>
      <DestinationCards destinations={destinations} setDestinations={setDestinations} handleDelete={handleDelete}/>
    </div>
  )
}

export default DestinationsContainer