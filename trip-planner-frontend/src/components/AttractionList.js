import React, { useState } from 'react';
import ConcertItem from './ConcertItem.js';
import EateryItem from './EateryItem.js';
import AttractionsForm from './AttractionsForm.js';


function AttractionList({availableCities, displayData, attractionType, onHandleChange, dropdownValue, onUpdateObject, onPost, onUpdateData, onUpdateCities}) {



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
            <div className="container-fluid">
                {attractionType === "concerts" ? <h3>Concerts</h3> : <h3>Eateries</h3>}
                <div className="row">
                {displayData.map((attraction) => 
                        attractionType === "concerts" ?
                            <ConcertItem attraction={attraction} key={attraction.id} handleDelete={handleDelete}/> 
                            : 
                            <EateryItem attraction={attraction} key={attraction.id}
                            onUpdateObject={onUpdateObject} handleDelete={handleDelete}/> 
                )}
                </div>
            </div>
            <AttractionsForm onUpdateCities={onUpdateCities} attractionType={attractionType} onPost={onPost}/>
        </div>
    )
}

export default AttractionList