import React from "react";


function PieceReviewCard({comment, rating}) {
 
  return (
    <li className="review-card">
      <h4>Rating: {rating}</h4>
      <p>{comment}</p>
    </li>
  );
}

export default PieceReviewCard;