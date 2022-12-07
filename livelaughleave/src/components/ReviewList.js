import React, {useState, useEffect} from 'react';
import Review from './Review';
import NewReviewForm from './NewReviewForm';
import {useParams} from 'react-router-dom';

function ReviewList(){

    const [reviews, setReviews] = useState([])
    const {id} = useParams();

    useEffect (()=> {
        fetch(`http://localhost:3000/destinations/${id}/reviews`)
        .then((r)=>r.json())
        .then((data)=>{
            console.log(data)
            setReviews(data)
    
        });
    },[id])

    return(
        <div className="review-list">
            <NewReviewForm reviews={reviews} setReviews={setReviews} />
            <div className="reviews">
                {reviews.map(review => <Review key={review.id} review={review}/>)}
            </div>
        </div>
    )

}

export default ReviewList