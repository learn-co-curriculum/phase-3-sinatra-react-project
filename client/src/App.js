import './App.css';
import { Route, Switch } from "react-router-dom";
import { useState, useEffect } from 'react';
import Trips from "./Components/Trips";
import MuseumSelection from "./Components/MuseumSelection";
import HomePage from "./Components/HomePage";
import NavBar from "./Components/NavBar";
import NewMuseumForm from "./Components/NewMuseumForm";


function App() {

  const [museumData, setMuseumData] = useState([])
  const [tripsData, setTripsData] = useState([])
  const [museums, setMuseums] = useState([]);

  useEffect(() => {
    fetch('http://localhost:9292/museums')
      .then(res => res.json())
      .then((data) => setMuseumData(data))
  }, [])

  console.log(museumData)

  useEffect(() => {
    fetch('http://localhost:9292/trips')
      .then(res => res.json())
      .then((data) => setTripsData(data))
  }, [])

  console.log(tripsData)

  const mapTripsData = tripsData.map((trip) => <Trips key={trip.id} trip={trip} />)

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
          <MuseumSelection museumData={museumData} mapTripsData={mapTripsData} tripsData={tripsData} setTripsData={setTripsData}/>
          <NewMuseumForm museums={museums} addMuseum={addMuseum} />
        </Route>
        <Route exact path="/trips">
          {mapTripsData}
        </Route>
      </Switch>

    </div>
  );
}
export default App;


/* {mapTripsData} */ 
/* <Route
                exact
                path="/trips/:id/edit"
                render={({ match }) => (
                    <TripEditForm
                    trip={tripsData.find((trip) => trip.id === parseInt(match.params.id))}
                    updateTrip={updateTrip}
            />
          )}
        /> */