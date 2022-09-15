import React from 'react';
import {useState} from 'react'

function AttractionsForm({ attractionType, onPost }) {
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
        
        if (attractionType === "concerts") {
            const newCity = {
                    name: cityNameForm,
                    state: stateNameForm,
            }
            const newBand = {
                    name: bandName,
                    genre: genre
            }
            const newConcert = {
                    date: concertDate,
                    venue_name: venueName,
                    venue_type: venueType,
                    band_id: newBand.id,
                    city_id: newCity.id
            } 
            fetch("http://localhost:9292/concerts",{
                method: 'POST',
                headers: {
                    "Content-Type": "application/json",
                },
                body: JSON.stringify({newConcert, newBand, newCity})
            })
                .then(res=> res.json()) 
                .then(newConcertObj => onPost(newConcertObj))
        }
            
        else {
            const newCity = {
                name: cityNameForm,
                state: stateNameForm,
            }
            const newEatery = {
                name: eateryName,
                cuisine_type: cuisineType,
                "downtown?": downtown,
                address: address,
                rating: 0,
                city_id: newCity.id
            }
            fetch("http://localhost:9292/eateries", {
                method: 'POST',
                headers: {
                    "Content-Type": "application/json",
                },
                body: JSON.stringify({newEatery, newCity})
            })
            .then(res=> res.json())
            .then(newEateryObj => onPost(newEateryObj))
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
                        <input placeholder="true or false" type="text" name="downtown?"onChange={(e)=>setDowntown(e.target.value)}/>
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
