import React, {useEffect, useState} from 'react'
import Review from './Review'
import EditReview from './EditReview'

function ReviewList({reviews, destinationId}) {
  const [displayedReviews, setDisplayedReviews] = useState([]);

  useEffect(() => {
    fetch(`http://localhost:9292/destinations/${destinationId}/reviews`)
      .then((r) => r.json())
      .then((data) => setDisplayedReviews(data));
  }, []);

  function handleDelete(deletedItem) {
    const updatedReviews = displayedReviews.filter((review) => review.id !== deletedItem.id);
    setDisplayedReviews(updatedReviews);
  }

  return (
    <div>
        <ul>
          {displayedReviews.map((review) => (
            <Review
              key={review.id}
              review={review}
              // message={review.message}
              // stars={review.stars}
              // user={review.user}
              onDeleteReview={handleDelete}
              destinationId={destinationId}
            />
          ))}
        </ul>
        <EditReview/>
    </div>
  )
}

export default ReviewList