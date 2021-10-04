import React, { useState, useEffect }  from "react";
import Header from "./components/Header";
import ArtGallery from "./components/ArtGallery";
import ArtForm from "./components/ArtForm";

import {Switch, Route} from 'react-router-dom';


function App() {
  const[artworks, setArtworks] = useState([]);
  //const[update, setUpdate] = useState(false);
  function getPieces(){
    fetch(`http://localhost:9292/pieces`)
    .then(resp => resp.json())
    .then(artworks => setArtworks(artworks))
  }
  useEffect(()=>{
    getPieces();
  },[]);
  return (
    <div className="app">
      <Header />

      <Switch>

        <Route path="/art/new">
          <ArtForm />
        </Route>

        <Route path="/">
          <ArtGallery artworks={artworks}/>
        </Route>
      </Switch>
    
    </div>
  );
}

export default App;
