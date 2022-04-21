import './App.css';
import { Route, Switch, useHistory, useLocation } from "react-router-dom";
import { useState, useEffect, } from 'react';
import Trips from "./Components/Trips";
import MuseumSelection from "./Components/MuseumSelection";
import HomePage from "./Components/HomePage";
import NavBar from "./Components/NavBar";
import NewMuseumForm from "./Components/NewMuseumForm";
import NewTripForm from "./Components/NewTripForm";
import TripEditForm from "./Components/TripEditForm";


function App() {

  const [museumData, setMuseumData] = useState([]);
  const [tripsData, setTripsData] = useState([]);
  const [museums, setMuseums] = useState([]);
  const [visits, setVisits] = useState([]);
  const history = useHistory();
  const location = useLocation();

  useEffect(() => {
    fetch('http://localhost:9292/museums')
      .then(res => res.json())
      .then((data) => setMuseumData(data))
  }, [])

  // console.log(museumData)

  useEffect(() => {
    fetch('http://localhost:9292/trips')
      .then(res => res.json())
      .then((data) => setTripsData(data))
  }, [])

  console.log(tripsData)

  // const mapVisitsData = visitsData.map((visit) => <Trips key={visit.id} visit={visit} />)

  // console.log(mapVisitsData)

  const addMuseum = (formData) => {
    fetch('http://localhost:9292/museums', {
      method: 'POST',
      headers: {
        'Content-Type': 'application/json',
        Accept: 'application/json'
      },
      body: JSON.stringify(formData)
    })
      .then(res => res.json())
      .then(newMuseum => {
        // pessimistically wait to update the state until we have the new museum (and its id) from api
        setMuseums(museums.concat(newMuseum))
        // history.push(`/museums/`)
      });
  }

  const addTrip = (formData) => {
    fetch('http://localhost:9292/trips', {
      method: 'POST',
      headers: {
        'Content-Type': 'application/json',
        Accept: 'application/json'
      },
      body: JSON.stringify(formData)
    })
      .then(res => res.json())
      .then(newTrip => {
        setTripsData(tripsData.concat(newTrip))
      });
  }

  const updateTrip = (id, formData) => {
    fetch(`http://localhost:9292/trips/${id}`, {
      method: 'PATCH',
      headers: {
        'Content-Type': 'application/json',
        Accept: 'application/json'
      },
      body: JSON.stringify(formData)
    })
      .then(res => res.json())
      .then(updatedTrip => {
        // pessimistically update the dog in state after we get a response from the api
        setTripsData(tripsData.map((trip) => (trip.id === parseInt(id) ? updatedTrip : trip)));
        history.push(`/trips/${updatedTrip.id}`);
      });
  }

  const deleteTrip = (trip_id) => {
      // optimistically update the ui
      setTripsData(tripsData.filter(trip => trip.id !== parseInt(trip_id)))
      // update the API
      fetch(`http://localhost:9292/trips/${trip_id}`, {
        method: 'DELETE',
        headers: { Accept: 'application/json' }
      })
        .then(res => res.json())
        .then(deletedTrip => {
          console.log('deleted', deletedTrip.trip_title)
          if (location.pathname !== "/trips") {
            history.push("/trips")
          }
        });
  }

  const addVisit = (formData) => {
    fetch('http://localhost:9292/visits', {
      method: 'POST',
      headers: {
        'Content-Type': 'application/json',
        Accept: 'application/json'
      },
      body: JSON.stringify(formData)
    })
      .then(res => res.json())
      .then(newVisit => {
        setVisits(visits.concat(newVisit))
      });
  }

  return (
    <div>
      <div>
        <NavBar />
      </div>
      <Switch>
        <Route exact path="/">
          <HomePage />
        </Route>
        <Route exact path="/museums">

          <MuseumSelection museumData={museumData} visits={visits} addVisit={addVisit} />

          <NewMuseumForm museums={museums} addMuseum={addMuseum} />
        </Route>
        <Route exact path="/trips">
          <Trips tripsData={tripsData} addTrip={addTrip} updateTrip={updateTrip} deleteTrip={deleteTrip} history={history} />
          <NewTripForm addTrip={addTrip}/>
        </Route>
        <Route
                exact
                path="/trips/:id/edit"
                render={({ match }) => (
                    <TripEditForm
                    trip={tripsData.find((trip) => trip.id === parseInt(match.params.id))}
                    updateTrip={updateTrip}
                  />
                )}
              /> 
      </Switch>

    </div>
  );
}
export default App;


/* {mapTripsData} */
            // <Route
            //     exact
            //     path="/trips/:id/edit"
            //     render={({ match }) => (
            //         <TripEditForm
            //         trip={tripsData.find((trip) => trip.id === parseInt(match.params.id))}
            //         updateTrip={updateTrip}
            //       />
            //     )}
            //   /> 