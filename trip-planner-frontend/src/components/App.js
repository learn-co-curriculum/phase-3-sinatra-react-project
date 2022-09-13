import '../App.css';
import React, {useState} from 'react'
import { Switch, Route, Link, useHistory } from "react-router-dom";
import Home from './Home.js'
import NavBar from './NavBar.js';
import AttractionList from './AttractionList.js';
import AttractionsForm from './AttractionsForm.js';

function App() {
  const [attractionType, setAttractionType] = useState([])
  const [chosenCities, setChosenCities] = useState([])
  const [bandsPlaying, setBandsPlaying] = useState([])
  const [chosenEateries, setChosenEateries] = useState([])
  const [userPrefs, setUserPrefs] = useState([])
  
  //set state of eateries and bands relative to selected city
  //fetch request based off aforementioned state(s) (respectively)

  function resetChoices(){
    setChosenCities([])
    setBandsPlaying([])
    setChosenEateries([])
  }

  return (
    <div className="App">
      <Switch>
        <Route>
          <NavBar resetChosen={resetChoices}/>
        </Route>
        <Route exact path="/">
          <Home/>
        </Route>
        <Route exact path="/attractions">
          <AttractionList/> 
        </Route>
        <Route exact path="/addAttraction">
          <AttractionsForm/>
        </Route>
      </Switch>
    </div>
  );
}

export default App;
