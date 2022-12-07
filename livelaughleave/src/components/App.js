
import './App.css';
import React, {useState, useEffect} from 'react';
import { Route, Switch, Link } from "react-router-dom";
import DestinationList from './DestinationList';
import NavBar from './NavBar'
import NewReviewForm from './NewReviewForm'
// import { BrowserRouter } from 'react-router-dom'

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
        <NavBar />
        <DestinationList destinations={destinations}/>
        <Switch>
          <Route exact path="/NewReviewForm" component={NewReviewForm}/>
        </Switch>

    </div>
  );
}

export default App;
