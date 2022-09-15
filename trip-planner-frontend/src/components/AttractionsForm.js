import React from 'react';
import {useState} from 'react'

function AttractionsForm({ attractionType, onPost, onUpdateCities }) {
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
            onUpdateCities(newCity)
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
                .then(newConcertObj => {
                    onPost(newConcertObj)
                    onUpdateCities(newConcertObj.city)
                })
            setCityNameForm("")
            setStateNameForm("")
            setConcertDate("")
            setVenueName("")
            setVenueType("")
            setBandName("")
            setGenre("")
        }
            
        else {
            const newCity = {
                name: cityNameForm,
                state: stateNameForm,
            }
            onUpdateCities(newCity)
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
            .then(newEateryObj => {
                onPost(newEateryObj)
                onUpdateCities(newEateryObj.city)
            }
        )}
        setCityNameForm("")
        setStateNameForm("")
        setEateryName("")
        setDowntown("")
        setCuisineType("")
        setAddress("")
    }
    
    return (
        <div>
            {attractionType === "concerts" ? <h1>Add A Concert</h1> : <h1>Add An Eatery</h1>}
                    {/*city form*/}

            {attractionType === "concerts" ?
                    <form onSubmit={submitNewCity}>
                        <label>City</label>
                        <input placeholder="City Name" type="text" name="city" onChange={(e)=>setCityNameForm(e.target.value)} value={cityNameForm}/>
                        <label>State</label>
                        <input placeholder="State Initial" type="text" name="state" onChange={(e)=>setStateNameForm(e.target.value)}value={stateNameForm}/>
                        {/* concert form */}
                        <label>Date</label>
                        <input placeholder="Date" type="text" name="Date" onChange={(e) => setConcertDate(e.target.value)} value={concertDate}/>
                        <label>Venue</label>
                        <input placeholder="Venue Name" type="text" name="Venue" onChange={(e)=>setVenueName(e.target.value)} value={venueName}/>
                        <label>Venue Type</label>
                        <input placeholder="Arena, Medium, Local?" type="text" name="Venue Type"onChange={(e)=>setVenueType(e.target.value)} value={venueType}/>
                        {/*band form*/}
                        <label>Band Name</label>
                        <input placeholder="Band/Artist Name" type="text" name="name"onChange={(e)=>setBandName(e.target.value)} value={bandName}/>
                        <label>Genre</label>
                        <input placeholder="Genre" type="text" name="genre"onChange={(e)=>setGenre(e.target.value)} value={genre}/>
                        <input type="submit" />
                    </form>
                    :
                    <form onSubmit={submitNewCity}>
                        <label>City</label>
                        <input placeholder="City Name" type="text" name="city" onChange={(e)=>setCityNameForm(e.target.value)} value={cityNameForm}/>
                        <label>State</label>
                        <input placeholder="State Initial" type="text" name="state" onChange={(e)=>setStateNameForm(e.target.value)} value={stateNameForm}/>
                        {/*eatery form*/}
                        <label>Name</label>
                        <input placeholder="Eatery Name" type="text" name="Name"onChange={(e)=>setEateryName(e.target.value)} value={eateryName}/>
                        <label>Downtown?</label>
                        <input placeholder="true or false" type="text" name="downtown?"onChange={(e)=>setDowntown(e.target.value)} value={downtown}/>
                        <label>Cuisine Type</label>
                        <input placeholder="Cuisine Type" type="text" name="cuisine type"onChange={(e)=>setCuisineType(e.target.value)} value={cuisineType}/>
                        <label>Address</label>
                        <input placeholder="Address" type="text" name="Address"onChange={(e)=>setAddress(e.target.value)} value={address}/>
                        <input type="submit" />
                    </form>
            }
        </div>
    )
}

export default AttractionsForm
