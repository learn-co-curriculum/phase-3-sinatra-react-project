import React, { useState, useEffect } from 'react'
import ReviewList from './ReviewList'
import AddReview from './AddReview'

function Destination({destination, handleDelete}) {
  const {id, city_name, country_name, continent, img_url, reviews, created_at, updated_at} = destination;
  const [destReviews, setDestReviews] = useState([]);

  // useEffect(() => {
  //   fetch("http://localhost:9292/reviews")
  //     .then((r) => r.json())
  //     .then((data) => setDestReviews(data));
  // }, []);

  console.log(destReviews);

  return (
    <>
      <div className='card'>
        <div className='container'>
          <h1>{city_name}</h1>
          <img className='image' src={img_url} alt={city_name}/>
          <h2>{country_name}</h2>
          <h2>{continent?.continent_name}</h2>
          <button
          className='delete'
          onClick={() => handleDelete(id)}
          >Delete</button>
        </div>
      </div>
      <ReviewList reviews={reviews} destinationId={id}/>
      <AddReview/>
    </>
  )
}

export default Destination