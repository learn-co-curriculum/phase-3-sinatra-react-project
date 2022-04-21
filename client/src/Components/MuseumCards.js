import React, { useState } from 'react';

function MuseumCards({ museum, mapTripsData, tripsData, setTripsData }) {
    const [trip, setTrip] = useState([]);

    // const [favorited, setFavorited] = useState(false);

    // function handleStar() {
    //     setFavorited(!favorited)
    // };

    return (
        <div className="card">
            <div className="image">
                <img src={museum.image} alt={museum.name} />
            </div>
            <div className="details">
                <strong>{museum.name}</strong>
                <br/>
                <strong>{museum.description} </strong>
                <strong> {`${museum.address} ${museum.city.city_name}, ${museum.zipcode}, Texas`}</strong>
                <br/>
                <a href={`${museum.weburl}`}><strong> Museum's Website </strong></a>
                <fieldset className="">
                <label className="" htmlFor="tripsData">
                    Add to Trip:
                    </label>
                    <select
                    // value={trip}
                    onChange={(e) => setTrip(e.target.value)}
                    >
                    <option>Create New Trip</option>
                    tripsData.map((trip) => <option value={trip.id}>{trip.trip_title}</option>)
                    </select>
            </fieldset>
                {/* {favorited ? (
                    <button onClick={handleStar} className="emoji-button favorite active">★</button>
                ) : (
                    <button onClick={handleStar} className="emoji-button favorite">☆</button>
                )} */}
            </div>
        </div>
    );
}



export default MuseumCards;