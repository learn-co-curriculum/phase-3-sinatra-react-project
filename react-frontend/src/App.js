import React, { useState, useEffect } from "react";
// import { Route, Routes } from "react-router-dom";
import './App.css';
import User from './User';
import NavBar from './NavBar';
import CharacterCreation from "./CharacterCreation";
import CharacterList from "./CharacterList";
import Home from "./Home"

function App() {

  const [users, setUsers] = useState([])
  
  // const [characters, setCharacters] = useState([])
  // const [templates, setTemplates] = useState([])

  useEffect( () => {
  fetch("http://localhost:9292/users")
      .then(res => res.json())
      .then(setUsers)
  }, [])

  // useEffect( () => {
  //     fetch(`http://localhost:9292/users/${user.id}`)
  //         .then(res => res.json())
  //         .then(setUser(user))
  //     }, [])

    // const handleUsers = () => {
    //   setUsers(users)
    // }

    // const handleSingleUser = () => {
    //   setUser(user)
    // }



  // useEffect( () => {
  //     fetch("http://localhost:9292/characters")
  //         .then(res => res.json())
  //         .then(characters => setCharacters(characters))
  //     }, [])

  // useEffect( () => {
  //     fetch("http://localhost:9292/templates")
  //             .then(res => res.json())
  //         .then(templates => setTemplates(templates))
  //      }, [])    


  return (
    <div className = "app">
      <NavBar/>
      <Home/>
      <User users={users}/>
      <CharacterCreation/>
      <CharacterList/>
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