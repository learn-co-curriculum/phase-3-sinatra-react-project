import React from "react";
import { Route, Switch } from "react-router-dom";
import './App.css';
import User from './User';
import NavBar from './NavBar';
import CharacterCreation from "./CharacterCreation";
import CharacterList from "./CharacterList";

function App() {
  return (
    <div className = "app">
      <NavBar/>
         <Switch>  
             <Route exact path = '/'>
               <Home/>
             </Route>
             <Route path ="/user">
             <User/>
             </Route>
             <Route path ="/create_characters" >
             <CharacterCreation/>
             </Route>
             <Route path ="character_list">
             <CharacterList/>
             </Route>
         </Switch>
    </div>
  );
}

export default App;



 //original content of App.js
 // import logo from './logo.svg';
  // <div className="App">
    //   <header className="App-header">
    //     <img src={logo} className="App-logo" alt="logo" />
    //     <p>
    //       Heeeeeyyyyy. Sup world?
    //     </p>
    //     <a
    //       className="App-link"
    //       href="https://reactjs.org"
    //       target="_blank"
    //       rel="noopener noreferrer"
    //     >
    //       Learn React
    //     </a>
    //   </header>
    // </div>