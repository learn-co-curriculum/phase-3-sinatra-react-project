import '../App.css';
import React, {useState} from 'react'
import { Switch, Route, Link, useHistory } from "react-router-dom";
import Home from './Home.js'
import NavBar from './NavBar.js';
import AttractionList from './AttractionList.js';
import AttractionsForm from './AttractionsForm.js';

function App() {

  const [chosenCities, setChosenCities] = useState([])
  const [bandsPlaying, setBandsPlaying] = useState([])
  const [chosenEateries, setChosenEateries] = useState([])
  const [userPrefs, setUserPrefs] = useState([])

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
