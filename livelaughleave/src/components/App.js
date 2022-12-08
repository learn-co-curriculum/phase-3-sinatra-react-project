
import './App.css';
import React, {useState, useEffect} from 'react';
import { Route, Switch, BrowserRouter as router} from "react-router-dom";
import DestinationList from './DestinationList';
import NavBar from './NavBar'
import DestinationShow from './DestinationShow'
// import NewReviewForm from './NewReviewForm'
// import Search from './Search'
// import DestinationDetails from './DestinationDetails';


const API = 'http://localhost:9292/destinations'
const headers = {
  Accepts: "application/json",
        "Content-Type" : "application/json"
}

function App() {

  const [destinations, setDestinations] = useState([])

  useEffect(() => {
    fetch(API)
    .then(r => r.json())
    .then((data) => setDestinations(data))
  }, [])
  
  function handleDeleteDestination(id){
    const updateDestination = destinations.filter(oneDestination=> oneDestination.id !==id)
    setDestinations(updateDestination)
  }

  function incrementLikes(destination){
    fetch(`${API}/${destination.id}`, {
      method: "PATCH",
      headers, 
      body: JSON.stringify({likes: destination.likes +1}),
    }).then(() => 
      setDestinations(
        destinations.map( theDestination=> theDestination.id !== destination.id ? theDestination : {...theDestination, likes: theDestination.likes +1 } 
      )
    )
   )
  }

  return (
    <>
        <NavBar />
        <Switch>
          <Route exact path='/'>
            {/* <img src="https://i.gifer.com/embedded/download/UDG7.gif"/> */}
          </Route>
          <Route path="/newreviewform">
            <h2>Life</h2>
          </Route>
          <Route path="/search">
            <h2>search</h2>
          </Route>
          <Route path="/destination/:id">
            <DestinationShow setDestinationForm={setDestinations} destinationForm={destinations} />
          </Route>
          <Route path="/destination" >
            <DestinationList destinations={destinations} setDestinations={setDestinations} handleDeleteDestination={handleDeleteDestination} handleClickLikes={incrementLikes}/>
          </Route>
          <Route path="*">
            <h1>404 not found</h1>
          </Route>
        </Switch>

    </>
  );
}

export default App;
