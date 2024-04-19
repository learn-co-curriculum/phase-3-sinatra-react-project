import React, { useEffect, useState } from "react";
import { Route, Routes, Navigate, useNavigate } from "react-router-dom";
import './App.css';
import Home from "./Home"
import Login from "./Login"
import CharacterCreation from "./CharacterCreation";
import CharacterList from "./CharacterList";
import CharacterCard from "./CharacterCard";
import axios from "axios";

function App() {
  const [user, setUser] = useState(() => {
    const newUser = localStorage.getItem('loadedUser')
    return newUser ? JSON.parse(newUser) : null
  })
  const [characters, setCharacters] = useState(() => {
    const newCharacters = localStorage.getItem('loadedCharacters')
    return newCharacters ? JSON.parse(newCharacters) : []
  })
  const navigate = useNavigate()
  
  useEffect(() => {
    const fetchData = async () => {
      try {
        const response = await axios.get("/me");
          localStorage.setItem('loadedCharacters', JSON.stringify(response.data.characters));
          localStorage.setItem('loadedUser', JSON.stringify(response.data));
      } catch (error) {
        console.error('Authentication error:', error);
      }
    };

    fetchData();
  }, []);

  const handleUser = (userData) => {
    setUser(userData)
    setCharacters(userData.characters)
    localStorage.setItem('loadedUser', JSON.stringify(userData))
    localStorage.setItem('loadedCharacters', JSON.stringify(userData.characters));
  }

  const handleCharacters = (characterData) => {
    setCharacters(characterData)
  }
  
  const handleSelectedCharacter = (character) => {
      localStorage.removeItem('selectedCharacter')
      navigate('/character_card', {state: {character: character}})
  }

  const handleLogout = () => {
    axios.delete('/logout')
    setUser(null)
    localStorage.clear()
    navigate('/login')
}
  
  return (
    <div className = "app">
      <style>
      @import url('https://fonts.googleapis.com/css2?family=UnifrakturMaguntia&display=swap');
      </style>
      <h1>Adventure Character Generator</h1>
      <Routes>
        <Route path="/" element={user ? <Home handleUser={handleUser} handleLogout={handleLogout}/> : <Navigate replace to="/login" />} />
        <Route path="/login" element={!user ? <Login handleUser={handleUser} /> : <Navigate replace to="/" />} />
        {user ? <Route path="character_creation" element={<CharacterCreation userId={user.id} characters={characters} handleCharacters={handleCharacters}/>} /> : null}
        {user ? <Route path="character_selection" element={<CharacterList characters={characters} handleSelectedCharacter={handleSelectedCharacter} />} /> : null}
        <Route path="character_card" element={<CharacterCard characters={characters} handleCharacters={handleCharacters}/>} />
      </Routes>
    </div>
  );
}

export default App;
