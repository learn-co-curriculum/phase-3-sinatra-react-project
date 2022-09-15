import React, { useState } from 'react';
import ConcertItem from './ConcertItem.js';
import EateryItem from './EateryItem.js';
import AttractionsForm from './AttractionsForm.js';


function AttractionList({availableCities, displayData, attractionType, onHandleChange, dropdownValue, onUpdateObject, onPost, onUpdateData}) {



    function handleChange(e) {
        // console.log(e.target.value)
        onHandleChange(e.target.value)
    }

    function handleDelete(attraction) {
        // console.log(attraction.id)
        fetch(`http://localhost:9292/${attractionType}/${attraction.id}`, {
            method: 'DELETE'
        })
            .then(res => res.json())
            .then(deletedAttraction => updateData(deletedAttraction))
    }

    function updateData(attraction) {
        onUpdateData(attraction)
    }

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
            <AttractionsForm attractionType={attractionType} onPost={onPost}/>
        </div>
    )
}

export default AttractionList