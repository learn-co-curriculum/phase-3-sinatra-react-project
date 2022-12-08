
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
        {/* <div className="home-container">
          <div className="home">
            <img className="home-images" src="https://img.freepik.com/premium-photo/sea-sandy-beach-vertical-seascape-with-space-your-own-text-may-be-used-as-background_483040-76.jpg?w=2000" alt='home_1'/>
            <img className="home-images" src="https://travel.home.sndimg.com/content/dam/images/travel/fullrights/2018/12/31/0/CI_Alabama_Tourism_Dept_Fairhope-Downtown.jpg.rend.hgtvcom.406.542.suffix/1546453234469.jpeg" alt='home_2' />
            <img className="home-images" src="https://cdn2.storyasset.link/cuigamKkJkeJuJRupi2ppVaeBel2/1-ms-ktsbzbffor.jpg" alt='home_3' />
            <img className="home-images" src="https://i.pinimg.com/originals/a8/ed/e7/a8ede7fa754f27f2c71d08f655b98d3c.jpg" alt= 'home_4' />
            <img className="home-images" src="https://images.pexels.com/photos/13474751/pexels-photo-13474751.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500" alt='home_5' />
          </div>
        </div> */}
    </>
  );
 
}

export default App;
