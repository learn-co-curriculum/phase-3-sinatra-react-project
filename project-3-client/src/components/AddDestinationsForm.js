import React from 'react'

function AddDestinationsForm() {
  return (
    <div className='destination_form'>
      <form className='ui_form'>
        <input
          className='city_name'
          type="text"
          name="city"
          placeholder='Add City Name'
        ></input>
          <input
            className="image_url"
            type="text"
            name="url"
            placeholder="Add Image URL"
          ></input>
          <input
            className="country_name"
            type="text"
            name="country"
            placeholder="Add Country Name"
          ></input>
          <label for="cars">Pick a Continent:</label>
          <select name='cars'>
            <optgroup label='Continents'>
            <option>North America</option>
            <option>South America</option>
            <option>Europe</option>
            <option>Africa</option>
            <option>Asia</option>
            <option>Australia</option>
            <option>Antarctica</option>
            </optgroup>
          </select>
          <button>Add Destination</button>
      </form>
      </div>
  )
}

export default AddDestinationsForm