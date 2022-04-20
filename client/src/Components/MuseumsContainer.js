import '../App.css';
import { useState, useEffect } from 'react';
import { Switch, Route, useHistory, useLocation } from 'react-router-dom';
import Trips from "./Trips";
import NewMuseumForm from "./NewMuseumForm";
import MuseumSelection from "./MuseumSelection";
import HomePage from "./HomePage";
import NavBar from "./NavBar";

function MuseumsContainer() {
    const history = useHistory();
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
      <div className="App">
        <HomePage/>
        <NavBar/>
        <Switch>
            <Route exact path="/museums">
                <MuseumSelection museumData= {museumData}/>
            </Route>
            <Route exact path="/museums/new">
            <NewMuseumForm museums={museums} addMuseum={addMuseum} />
            </Route>
            <Route exact path="trips">
                <Trips />
            </Route>
            {/* {mapTripsData} */}
            {/* <Route
                exact
                path="/trips/:id/edit"
                render={({ match }) => (
                    <TripEditForm
                    trip={tripsData.find((trip) => trip.id === parseInt(match.params.id))}
                    updateTrip={updateTrip}
            />
          )}
        /> */}
        </Switch>
        {mapTripsData}
        <NewMuseumForm museums={museums} addMuseum={addMuseum} />
      </div>
    );
  }
  
  export default MuseumsContainer;