import React from 'react'

function SearchFilter() {
  return (
    <div className='search'>
      <h2>Destination Search</h2>
      <input
        className='search-input'
        type='text'
        placeholder='Search for Destinations!'
      ></input>
    </div>
  )
}

export default SearchFilter