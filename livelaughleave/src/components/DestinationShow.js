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
        review: "",
    }

    const [form, setForm] = useState(initialForm)
    
    const handleSubmit = (e) => {
        e.preventDefault();
        fetch("http://localhost:9292/destinations", {
            method: 'POST',
            headers: {'Content-Type': 'application/json'},
            Body: JSON.stringify(form),
    }).then(r => r.json())
      .then(data => {
        setForm(initialForm)
        setDestinationForm([...destinationForm, data ])})
      }

      let handleChange = (e) => {
        let name = e.target.name
        let value = e.target.value
        setForm({...form, [name]: value}) 
    }

    
    return(
        <div>
            {destination.reviews.map(review => <p>{review.comment}</p>)}
            <img src={destination.image}/>
            <form id="form" onSubmit={handleSubmit}>
                <input value={form.review} placeholder = "addReview" name= "review-form" type="text" onChange={handleChange} />
                <button className="button-85" id="addReviewBtn">Add Review</button>
            </form>
        </div>
    )
}



export default DestinationShow