import React from "react";
import Header from "./components/Header";
import ArtGallery from "./components/ArtGallery";
import ArtForm from "./components/ArtForm";

//import { useState, useEffect } from 'react';
import {Switch, Route} from 'react-router-dom';


function App() {
  //const[artworks, setArtworks] = useState([]);
  //const[update, setUpdate] = useState(false);

  /*useEffect(()=>{
    //get request
  },[update]);*/
  return (
    <div className="app">
      <Header />

      <Switch>

        <Route path="/art/new">
          <ArtForm />
        </Route>

        <Route path="/">
          <ArtGallery />
        </Route>
      </Switch>
    
    </div>
  );
}

export default App;
