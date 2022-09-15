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

  function onUpdateCities(newCity){
    console.log(newCity)
    setAvailableCities([...availableCities, newCity])
  }

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

  function onPost(newObj) {
    setDisplayData([...displayData, newObj])
  }

  function onUpdateData(deletedAttraction) {
    let updatedData = displayData.filter((attraction) => {
        return attraction.id !== deletedAttraction.id
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
          <AttractionList displayData={displayData} availableCities={availableCities} attractionType={attractionType} onHandleChange={onHandleChange} dropdownValue={dropdownValue} onUpdateObject={onUpdateObject} onPost={onPost} onUpdateData={onUpdateData} onUpdateCities={onUpdateCities}/> 
        </Route>
      </Switch>
    </div>
  );
}

export default App;