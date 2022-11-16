import React from 'react'

function SearchFilter({search, handleSearch}) {
  return (
    <div className='search'>
      <h2>Destination Search</h2>
      <input
        className='search-input'
        type='text'
        placeholder='Search for Destinations!'
        value={search}
        onChange={handleSearch}
      ></input>
    </div>
  )
}

export default SearchFilter