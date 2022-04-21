import TripCards from "./TripCards"

function Trips({ tripsData, addTrip, updateTrip, deleteTrip, history }) {


  // const mapTripsData = tripsData.map((visit) => <TripCards key={visit.id} visit={visit} addTrip={addTrip} updateTrip={updateTrip} deleteTrip={deleteTrip}/>)



  // function changeRoute() {

  // }

  return (
    <div >
      {tripsData.map((trip) => <button key={trip.id} onClick={() => history.push(`trips/${trip.id}`)}> {trip.trip_title} </button>)}
    </div>
  );
}

export default Trips;

  // const mapTripsData = tripsData.map((trip) => <Trips key={trip.id} trip={trip} />)