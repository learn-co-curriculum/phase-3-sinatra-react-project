import '../App.css';
import React, {useState, useEffect} from 'react'
import { Switch, Route, Link, useHistory } from "react-router-dom";
import Home from './Home.js'
import NavBar from './NavBar.js';
import AttractionList from './AttractionList.js';
import AttractionsForm from './AttractionsForm.js';

function App() {
  const [attractionType, setAttractionType] = useState("")
  const [displayData, setDisplayData] = useState([])

  const [chosenCities, setChosenCities] = useState([])
  const [bandsPlaying, setBandsPlaying] = useState([])
  const [chosenEateries, setChosenEateries] = useState([])
  const [userPrefs, setUserPrefs] = useState([])
  
  //set state of eateries and bands relative to selected city
  //fetch request based off aforementioned state(s) (respectively)

  // function resetChoices(){
  //   setChosenCities([])
  //   setBandsPlaying([])
  //   setChosenEateries([])
  // }
  
 useEffect(()=> {
  fetch(`http://localhost:9292/${attractionType}`)
    .then((i) => i.json())
    .then((attractionData)=> setDisplayData(attractionData))
 })

  function attractionClick(e){
    setAttractionType(e.target.value)
  }

  return (
    <div className="App">
      <NavBar attractionClick={attractionClick}/>
      <Switch>
        <Route exact path="/">
          <Home attractionClick={attractionClick}/>
        </Route>
        <Route exact path="/attractions">
          <AttractionList dislayData={displayData}/> 
        </Route>
        <Route exact path="/addAttraction">
          <AttractionsForm/>
        </Route>
      </Switch>
    </div>
  );
}

export default App;
