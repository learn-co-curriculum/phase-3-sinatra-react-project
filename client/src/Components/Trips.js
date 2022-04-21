import TripCards from "./TripCards"
function Trips({trip}) {

  function changeRoute(){

  }
  
    return (
      <div >
        
        <button onClick={changeRoute}> {trip.trip_title}</button>
      
      </div>
    );
  }
  
  export default Trips;