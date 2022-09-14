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
  const [availableCities, setAvailableCities] = useState([])
  const [dropdownValue, setDropdownValue] = useState("All")
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
 }, [attractionType])
 
 useEffect(()=> {
  fetch(`http://localhost:9292/cities`)
    .then((i) => i.json())
    .then((citiesData)=> setAvailableCities(citiesData))
 }, [])

  function onHandleChange(value) {
    setDropdownValue(value)
    value === "All" ? 
      fetch(`http://localhost:9292/${attractionType}`)
        .then((i) => i.json())
        .then((attractionData)=> setDisplayData(attractionData))
      :
      fetch(`http://localhost:9292/cities/${value}/${attractionType}`)
        .then((i) => i.json())
        .then(data => setDisplayData(data))
      }

  function attractionClick(e){
    setAttractionType(e)
    setDropdownValue("All")
  }

  function onUpdateObject(updatedObj) {
    let updatedData = displayData.map(object => {
      if (object.id === updatedObj.id) 
        return updatedObj
      else 
        return object 
    })
    setDisplayData(updatedData)
  }

  return (
    <div className="App">
      <NavBar attractionClick={attractionClick}/>
      <Switch>
        <Route exact path="/">
          <Home attractionClick={attractionClick}/>
        </Route>
        <Route exact path="/attractions">
          <AttractionList displayData={displayData} availableCities={availableCities} attractionType={attractionType} onHandleChange={onHandleChange} dropdownValue={dropdownValue} onUpdateObject={onUpdateObject}/> 
        </Route>
        <Route exact path="/addAttraction">
          <AttractionsForm/>
        </Route>
      </Switch>
    </div>
  );
}

export default App;
