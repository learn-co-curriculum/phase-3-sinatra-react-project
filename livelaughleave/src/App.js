
import './App.css';
import React, {useState, useEffect} from 'react';
// import { Route, Routes, Link } from "react-router-dom";
import DestinationList from './DestinationList';
import Header from './Header';

const API = 'http://localhost:9292/destinations'

function App() {

  const [destinations, setDestinations] = useState([])

  useEffect(() => {
    fetch(API)
    .then(r => r.json())
    .then((data) => setDestinations(data))
  }, [])

  return (
    <div className="App">
      <h1>hello</h1>
        <Header/>
        <DestinationList destinations={destinations}/>

    </div>
  );
}

export default App;
