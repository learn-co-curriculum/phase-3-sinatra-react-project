import React from 'react'

function Review({review, onDeleteReview, destinationId}) {


  function handleDeleteClick() {
    fetch(`http://localhost:9292/destinations/${destinationId}/reviews/${review.id}`, {
      method: "DELETE",
    })
    .then((r) => r.json())
    .then(() => onDeleteReview(review));
  }

  return (
    <div>
      {/* <span className="user">{review.user.first_name} {review.user.last_name}</span> */}
      <br />
      <span className="stars">{review.stars}⭐️</span>
      <br />
      <span className="message">{review.message}</span>
      <br />
      <button className="remove" onClick={handleDeleteClick}>Delete</button>
    </div>
  )
}

export default Review