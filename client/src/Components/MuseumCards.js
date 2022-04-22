import React from 'react';

function MuseumCards({ museum, mapTripsData, tripsData, setTripsData, addVisit }) {

    let museum_id = museum.id
    let city_id = museum.city_id

    const handleOnChange = async (e) => {
        e.preventDefault();
        let trip_id = e.target.value
        addVisit({
            museum_id,
            city_id,
            trip_id
            //   notes,
        })
    };

    return (
        <div className="museum-card">
            <div className="museum-card-image">
                <img src={museum.image} alt={museum.name} />
            </div>
            <div className="details">
                <a href={`${museum.weburl}`}><strong className = "museum-name">{museum.name}</strong></a>
                <br />
                <div className="museum-text">
                <strong>{museum.description} </strong>
                <strong> {`${museum.address} ${museum.city.city_name}, ${museum.zipcode}, Texas`}</strong>
                <br />
                {/* <strong> Museum's Website </strong> */}
                </div>
                <fieldset className="dropdown">
                    <label className="" htmlFor="tripsData">
                        Add to Trip:
                    </label>
                    <select
                        // value={trip}
                        onChange={(e) => handleOnChange(e)}
                    >
                        <option>Create New Trip</option>
                        {tripsData.map((trip) => <option key={trip.id} value={trip.id}>{trip.trip_title}</option>)}
                    </select>
                </fieldset>
            </div>
        </div>
    );
}



export default MuseumCards;