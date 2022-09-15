import React from 'react';
import {useState} from 'react'

function AttractionsForm({attractionType}) {
    const [cityNameForm, setCityNameForm] = useState("")
    const [stateNameForm, setStateNameForm] = useState("")
    const [concertDate, setConcertDate] = useState("")
    const [venueName, setVenueName] = useState("")
    const [venueType, setVenueType] = useState("")
    const [bandName, setBandName] = useState("")
    const [genre, setGenre] = useState("")
    const [eateryName, setEateryName] = useState("")
    const [downtown, setDowntown] = useState("")
    const [cuisineType, setCuisineType] = useState("")
    const [address,setAddress] = useState("")
  
    
   function submitNewCity(e){
    e.preventDefault()
      
    if (attractionType === "concert") {
    const newCity = {
            city: cityNameForm,
            state: stateNameForm,
        }
        fetch("http://localhost:9292/cities",{
            method: 'POST',
            headers: {
                "Content-Type": "application/json",
            },
            body: JSON.stringify(newCity)
        })
        .then(res=> res.json())   
        
        const newBand = {
          name: bandName,
          genre: genre
        }
        fetch("http://localhost:9292/bands",{
            method: 'POST',
            headers: {
                "Content-Type": "application/json",
            },
            body: JSON.stringify(newBand)
        })
        .then(res=> res.json())  

        const newConcert = {
          date: concertDate,
          venue_name: venueName,
          venue_type: venueType
        } 
        fetch("http://localhost:9292/concerts",{
            method: 'POST',
            headers: {
                "Content-Type": "application/json",
            },
            body: JSON.stringify(newConcert)
        })
        .then(res=> res.json())  
        }
        else{
            const newEatery = {
            name: eateryName,
            cuisine_type: cuisineType,
            downtown: downtown,
            address:address
        }
        const newCity = {
            city: cityNameForm,
            state: stateNameForm,
        }
        fetch("http://localhost:9292/cities",{
            method: 'POST',
            headers: {
                "Content-Type": "application/json",
            },
            body: JSON.stringify(newCity)
        })
        .then(res=> res.json())   
        fetch("http://localhost:9292/eateries", {
            method: 'POST',
            headers: {
                "Content-Type": "application/json",
            },
            body: JSON.stringify(newEatery)
        })
        .then(res=> res.json())
    }

    }
    
    return (
        <div>
            {attractionType === "concerts" ? <h1>Add A Concert</h1> : <h1>Add An Eatery</h1>}
                    {/*city form*/}

            {attractionType === "concerts" ?
                    <form onSubmit={submitNewCity}>
                        <label>City</label>
                        <input type="text" name="city" onChange={(e)=>setCityNameForm(e.target.value)}/>
                        <label>State</label>
                        <input type="text" name="state" onChange={(e)=>setStateNameForm(e.target.value)}/>
                        {/* concert form */}
                        <label>Date</label>
                        <input type="text" name="Date" onChange={(e) => setConcertDate(e.target.value)}/>
                        <label>Venue</label>
                        <input type="text" name="Venue" onChange={(e)=>setVenueName(e.target.value)}/>
                        <label>Venue Type</label>
                        <input type="text" name="Venue Type"onChange={(e)=>setVenueType(e.target.value)}/>
                        {/*band form*/}
                        <label>Band Name</label>
                        <input type="text" name="name"onChange={(e)=>setBandName(e.target.value)}/>
                        <label>Genre</label>
                        <input type="text" name="genre"onChange={(e)=>setGenre(e.target.value)}/>
                        <input type="submit" />
                    </form>
                    :
                    <form onSubmit={submitNewCity}>
                        <label>City</label>
                        <input type="text" name="city" onChange={(e)=>setCityNameForm(e.target.value)}/>
                        <label>State</label>
                        <input type="text" name="state" onChange={(e)=>setStateNameForm(e.target.value)}/>
                        {/*eatery form*/}
                        <label>Name</label>
                        <input type="text" name="Name"onChange={(e)=>setEateryName(e.target.value)}/>
                        <label>Downtown?</label>
                        <input type="text" name="downtown?"onChange={(e)=>setDowntown(e.target.value)}/>
                        <label>Cuisine Type</label>
                        <input type="text" name="cuisine type"onChange={(e)=>setCuisineType(e.target.value)}/>
                        <label>Address</label>
                        <input type="text" name="Address"onChange={(e)=>setAddress(e.target.value)}/>
                        <input type="submit" />
                    </form>
            }
        </div>
    )
}

export default AttractionsForm
