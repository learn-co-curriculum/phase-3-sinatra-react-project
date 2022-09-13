import React, { useState } from "react";
import Game from "./Game";

function Home() {
  const [currentUser, setCurrentUser] = useState([])
  const [userName, setUsername] = useState("")
  const [currentGame, setCurrentGame] = useState([])

  function createUser(e){
    e.preventDefault()

    const newUser = {
      name: userName
    }
    
    fetch("http://localhost:9292/users", {
      method : "POST",
      headers : {
        "Content-Type" : "application/json"
      },
      body : JSON.stringify(newUser)
    })
    .then(res => res.json())
    .then(data => setCurrentUser(data))

    setUsername("")
  }

  function createGame(){

    const newGame = {
      score: 0,
      user_id: currentUser.id
    }

    fetch("http://localhost:9292/games", {
      method : "POST",
      headers : {
        "Content-Type" : "application/json"
      },
      body : JSON.stringify(newGame)
    })
    .then(res => res.json())
    .then(data => setCurrentGame(data))
  }

  function updateGame(game){
    setCurrentGame(game)
  }


  return (
    <div>
      <h2>Welcome to the WordMaster game</h2>
      <h4>Enter your name to start playing</h4>
      <form onSubmit={(e) => createUser(e)}>
        <input value={userName} onChange={e => setUsername(e.target.value)} type="text" placeholder="Type your name..."></input>
        <button type="submit">Create User</button>
      </form>
      <button onClick={createGame}>Start Playing</button>
      <Game currentGame={currentGame} updateGame={updateGame}/>
    </div>
  );
}

export default Home;
