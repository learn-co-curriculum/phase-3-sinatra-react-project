import TripCards from "./TripCards"

function Trips({ tripsData }) {


  const mapTripsData = tripsData.map((visit) => <TripCards key={visit.id} visit={visit} />)



  function changeRoute() {

  }

  return (
    <div >
      {tripsData.map((trip) => <button key={trip.id} onClick={changeRoute}> {trip.trip_title} </button>)}
    </div>
  );
}

export default Trips;

  // const mapTripsData = tripsData.map((trip) => <Trips key={trip.id} trip={trip} />)