import React from 'react'
import ReviewList from './ReviewList'
import AddReview from './AddReview'

function Destination({destination, handleDelete}) {
  const {id, continent, country, city, url} = destination
  return (
    <div className='card'>
      <div className='container'>
      <h1>{city}</h1>
      <img className="image" src={url} alt={city}/>
      <h2>{country}</h2>
      <h3>{continent}</h3>
      <button className="delete" onClick={() => handleDelete(id)}>Delete</button>
      <ReviewList/>
      <AddReview/>
      </div>
    </div>
  )
}

export default Destination