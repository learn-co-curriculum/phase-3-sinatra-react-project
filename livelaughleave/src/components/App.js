
import './App.css';
import React, {useState, useEffect} from 'react';
import { Route, Switch, BrowserRouter as router} from "react-router-dom";
import DestinationList from './DestinationList';
import NavBar from './NavBar'
import NewReviewForm from './NewReviewForm'
import Search from './Search'
// import DestinationDetails from './DestinationDetails';


const API = 'http://localhost:9292/destinations'

function App() {

  const [destinations, setDestinations] = useState([])

  useEffect(() => {
    fetch(API)
    .then(r => r.json())
    .then((data) => setDestinations(data))
  }, [])

  return (
    <>
        <NavBar />
        <Switch>
          <Route exact path='/'> 
          </Route>
          <Route path="/newreviewform">
          </Route>
          <Route path="/search">
          </Route>
          <Route path="/destination" >
            <DestinationList destinations={destinations}/>
          </Route>
        </Switch>

    </>
  );
}

export default App;
