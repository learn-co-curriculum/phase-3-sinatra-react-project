import {useParams} from 'react-router-dom';
import React, {useEffect, useState} from 'react'


function DestinationShow({setDestinationForm, destinationForm}){
  
    const param = useParams()
    const [destination, setDestination] = useState({reviews: []})

    useEffect(() => {
        fetch(`http://localhost:9292/destinations/${param.id}`)
            .then(r => r.json())
            .then(setDestination)
    }, [])

    let initialForm ={
        comment: "",
    }

    const [form, setForm] = useState(initialForm)
    
    const handleSubmit = (e) => {
        e.preventDefault();
        fetch(`http://localhost:9292/destinations/${param.id}`, {
            method: 'POST',
            headers: {'Content-Type': 'application/json'},
            body: JSON.stringify(form),
    }).then(r => r.json())
      .then(data => {
        setForm(initialForm)
        setDestination( {...destination, reviews:[...destination.reviews, data ]} )})
      }

      let handleChange = (e) => {
        let name = e.target.name
        let value = e.target.value
        setForm({...form, [name]: value}) 
    }

    
    return(
        <div>
           
            <img className="review-image" src={destination.image} alt="reviews"/>
            <p className="review-page">{destination.description}</p>
            <form id="form" onSubmit={handleSubmit}>
                <input value={form.review} placeholder= "leave a review!" name= "comment" type="text" onChange={handleChange} />
                <button className="review-btn" id="addReviewBtn">Add Review</button>
                {destination.reviews.map(review => <p className="review-page">{review.comment}</p>)}
            </form>
        </div>
    )
}



export default DestinationShow