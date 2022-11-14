import React from 'react'

function AddDestinationsForm() {
  return (
    <div>
      <form>
        <input
            className='city-name'
            type="text"
            name="city"
            placeholder='Add City Name'
        ></input>
        <input
            className='country-name'
            type="text"
            name="country"
            placeholder='Add Country Name'
        ></input>
        <label for="continents">Choose a Continent: </label>
        <select
            className='continent-name'
            name='continents'
        >
            <optgroup label="Continents">
            <option value="north-america">North America</option>
            <option value="south-america">South America</option>
            <option value="europe">Europe</option>
            <option value="asia">Asia</option>
            <option value="africa">Africa</option>
            <option value="australia">Australia</option>
            </optgroup>
        </select>
        <input
         className='image-url'
         type="text"
         name="link"
         placeholder='Add Destinations Image URL'
        ></input>
        <button className='destination-button'>Add Destination</button>
      </form>
      </div>
  )
}

export default AddDestinationsForm