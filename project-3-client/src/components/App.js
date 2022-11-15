import React, { useState, useEffect} from 'react';
import { Route, Routes, Link } from "react-router-dom";
import DestinationsContainer from "./DestinationsContainer";
import FavoriteDestinations from "./FavoriteDestinations";
import AddDestinationsForm from "./AddDestinationsForm";

const API = "http://localhost9292/destinations";

function App() {

  const [destinations, setDestinations] = useState([]);

  useEffect(() => {
    fetch(API)
      .then((response) => response.json())
      .then((data) => setDestinations(data));
  }, []);

  return (
    <>
    <h1>Travel Destinations Application</h1>
    <nav className='nav'>
    <ul className='links'>
    <li>
      <Link to="/home_destinations">Home Destinations</Link>
    </li>
    <li>
      <Link to="/add_new_destinations">Add New Destination</Link>
    </li>
    <li>
      <Link to="/favorite_destinations">Favorite Destinations</Link>
    </li>
    </ul>
    </nav>
    <Routes>
      <Route path="/home_destinations" element={<DestinationsContainer
      destinations={destinations}/>}/>
      <Route path="/add_new_destinations" element={<AddDestinationsForm/>}/>
      <Route path ="/favorite_destinations" element={<FavoriteDestinations/>}/>
    </Routes>
    </>
  );
}

export default App;
