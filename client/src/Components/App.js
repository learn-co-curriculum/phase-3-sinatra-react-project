import '../App.css';
import { useState, useEffect } from 'react'
import Trips from "./Trips"
import MuseumSelection from "./MuseumSelection"
import HomePage from "./HomePage"
import NavBar from "./NavBar"

function App() {

  const [museumData, setMuseumData] = useState([])
  const [tripsData, setTripsData] = useState([])

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

  return (
    <div className="App">
      <HomePage/>
      <NavBar/>
      <MuseumSelection museumData= {museumData}/>
      {mapTripsData}
    </div>
  );
}

export default App;
