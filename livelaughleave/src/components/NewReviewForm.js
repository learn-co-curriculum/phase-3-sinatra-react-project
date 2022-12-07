import React, {useState} from 'react';

function NewReviewForm() {

    const [comment, setComment] = useState("")

    function handleSubmit(e){
        e.preventDefault()
        fetch('http://localhost:3000/reviews', {
            method: 'POST',
            headers: {
                "Content-Type" : "application/json",
        },
            body: JSON.stringify({
                comment: comment,
                destination_id: destination_id
            }),
    })
        .then((r)=>r.json())
        .then((newReview) => onAddReview(newReview))
        setComment('')

}

    return(

    <div>
        <h3 className="review-form">Leave Us a Review!❤️</h3>
        <form onSubmit={handleSubmit}>
        <input className="review-input" type="text" name="comment" placeholder="Write a Review!" value={comment} onChange={(e)=>setComment(e.target.value)}/>
        <button type="submit">Submit!</button>
        </form>
    </div>
    )
}


export default NewReviewForm