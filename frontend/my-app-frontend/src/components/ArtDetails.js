import React from "react"
import PieceReviewCard from "./PieceReviewCard"

function ArtDetails({piece, reviews}){
    const{title, image, date, artist, medium, dimensions, city, price, in_stock}=piece
   let eachReview = reviews.map((review)=>{
        return(
            <PieceReviewCard
                key={review.id}
                comment={review.comment}
                rating={review.rating}
            />
        )})
    return (
        <div className="details">
            <img src={image} alt={"art name"} />
            <h4>{title}</h4>
            <p>Price: ${price}</p>
            <p>Date Item Listed: {date}</p>
            <p>This work originates from {city?city:"unknown"} and was created by {artist}. The medium used was {medium} and the dimensions are {dimensions}.</p>
            <ul>
                {eachReview}
            </ul>
            <button>Add a review</button>
        </div>
    )

}

export default ArtDetails;