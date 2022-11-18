import React, {useEffect, useState} from 'react'
import Review from './Review'
import EditReview from './EditReview'

function ReviewList({reviews}) {
  const [displayedReviews, setDisplayedReviews] = useState([]);

  // let eachReview = reviews.map(review => review.message)

  // console.log(reviews)
  // console.log(displayedReviews)

  function handleDelete(deletedItem) {
    const updatedReviews = reviews.filter((review) => review.id !== deletedItem.id);
    reviews = updatedReviews;
  }

  return (
    <div>
        <ul>
          {reviews.map((review) => (
            <Review
              key={review.id}
              review={review}
              // message={review.message}
              // stars={review.stars}
              // user={review.user}
              onDeleteReview={handleDelete}
            />
          ))}
        </ul>
        <EditReview/>
    </div>
  )
}

export default ReviewList