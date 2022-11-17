import React from 'react'
import ReviewList from './ReviewList'
import AddReview from './AddReview'

function Destination({destination, handleDelete}) {
  const {id, city_name, country_name, continent, img_url, created_at, updated_at} = destination;

  return (
    <>
    <div className='card'>
      <div className='container'>
        <h1>{city_name}</h1>
        <img className='image' src={img_url} alt={city_name}/>
        <h2>{country_name}</h2>
        <h2>{continent?.continent_name}</h2>
        <p>{created_at}</p>
        <p>{updated_at}</p>
        <button
        className='delete'
        onClick={() => handleDelete(id)}
        >Delete</button>
      </div>
    </div>
    <ReviewList/>
    <AddReview/>
    </>
  )
}

export default Destination