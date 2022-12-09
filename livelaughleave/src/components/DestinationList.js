import React, {useState} from 'react'
import Destination from './Destination'

function DestinationList({destinations, setDestinations, handleDeleteDestination, handleClickLikes}) {
    let initialForm ={
        name: "",
        location: "",
        description: "",
        image: ""
    }

    
    const [form, setForm] = useState(initialForm)
    console.log(form)
    
    const handleSubmit = (e) => {
        e.preventDefault();
        fetch("http://localhost:9292/destinations", {
            method: 'POST',
            headers: {'Content-Type': 'application/json'},
            body: JSON.stringify(form),
    }).then(r => r.json())
      .then(data => {
        setForm(initialForm)
        setDestinations([...destinations, data ])})
      }

      let handleChange = (e) => {
        let name = e.target.name
        let value = e.target.value
        setForm({...form, [name]: value}) 
    }

    return(
    <>
    <form id="form" onSubmit={handleSubmit}>
     <input value={form.name} placeholder = "name" name= "destination-form" type="text" onChange={handleChange} />
     <input value={form.location} placeholder = "location" name= "destination-form" type="text" onChange={handleChange} />
     <input value={form.description} placeholder = "description" name= "destination-form" type="text" onChange={handleChange} />
     <input value={form.image} placeholder = "image" name= "destination-form" type="text" onChange={handleChange} />
            <button className="button-85" id="addReviewBtn">Add Destination</button>
     </form>
    {destinations.map(destination => <Destination key={destination.id} destination={destination} handleDeleteDestination={handleDeleteDestination} handleClickLikes={handleClickLikes}/>)}
    </>
    )
}

export default DestinationList
