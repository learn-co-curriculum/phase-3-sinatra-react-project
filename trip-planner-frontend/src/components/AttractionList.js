import React, { useState } from 'react';
import ConcertItem from './ConcertItem.js';
import EateryItem from './EateryItem.js';
import AttractionsForm from './AttractionsForm.js';


function AttractionList({availableCities, displayData, attractionType, onHandleChange, dropdownValue, onUpdateObject}) {



    function handleChange(e) {
        // console.log(e.target.value)
        onHandleChange(e.target.value)
    }

    function handleDelete(attraction) {
        console.log(attraction)
        // fetch(`http://localhost:9292/${attractionType}/${attraction.id}`, {
        //     method: 'DELETE'
        // })
    }

    // function updateData(attraction) {
    //     onUpdateData(attraction)
    // }


    //for App component
    // function onUpdateData(deletedAttraction) {
    //     let updatedData = displayData.map((attraction) => {
    //         return attraction.id !== deletedAttraction.id
    //     })
    //     setDisplayData(updatedData)
    // }

    return (
        <div>
            <select value={dropdownValue} onChange={handleChange}>
                <option>All</option>
                {availableCities.map((city)=> <option key={city.id} value={city.id}>{city.name}</option>)}
            </select>
            <div>
                {attractionType === "concerts" ? <h3>Concerts</h3> : <h3>Eateries</h3>}
                {displayData.map((attraction) => {
                    return (
                        <div>
                        <button onClick={() => handleDelete(attraction)}>Delete</button>
                        {attractionType === "concerts" ?
                            <ConcertItem attraction={attraction} key={attraction.id}/> 
                        : 
                            <EateryItem attraction={attraction} key={attraction.id}
                            onUpdateObject={onUpdateObject}/> 
                        }
                        </div>
                    )
                })}
            </div>
            <AttractionsForm attractionType={attractionType}/>
        </div>
    )
}

export default AttractionList