import React from 'react';
import {useParams} from "react-router-dom";
import MuseumCards from "./MuseumCards";
import TripEditForm from "./TripEditForm";

function TripCards({ tripsData, museumData, deleteVisit, deleteTrip, updateTrip}) {

    // call useParams to access the `params` from the url
    const params = useParams();
    
    const trip=tripsData.find((trip) => trip.id === parseInt(params.id))
    
    let visitIds = []
    let v=trip.visits
    let dict = {}
    
    v.forEach(visit => {visitIds.push(visit.museum_id)
    dict[visit.museum_id] = visit.id
    }
    )
    console.log(dict)
   

    const renderVisits = museumData
    .map((museum) => {
        let museum_id=museum.id
        if (visitIds.includes(museum.id)){
            console.log(museum_id)
            console.log(dict[museum_id])
            return (<div><MuseumCards key={museum.id} museum={museum} tripsData={tripsData}/>
            <button onClick={() => deleteVisit(dict[museum_id])}>Remove {museum.name} from Trip</button>
            </div>)
            
        }else {
            return null
        }
    })
    

    return (
        <div>
            <h1>{trip.trip_title}</h1>
            <button onClick={() => deleteTrip(trip.id)}>Delete this trip</button>
            <TripEditForm
                    trip={trip}
                    updateTrip={updateTrip}
                  />

        {renderVisits}
          
        </div>
    );
    }


export default TripCards;