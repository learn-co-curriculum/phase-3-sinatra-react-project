import React, { useState, useEffect, useContext } from "react";
import Game from "./Game";
import { UserContext } from "../Context/UserProvider";

function Home() {
  let [currentUser, setCurrentUser] = useContext(UserContext);
  // const [currentUser, setCurrentUser] = useState([]);
  const [userName, setUsername] = useState("");
  const [currentGame, setCurrentGame] = useState([]);
  const [allUsers, setAllUsers] = useState([]);

  function createUser(e) {
    e.preventDefault();

    const newUser = {
      name: userName,
    };

    fetch("http://localhost:9292/users", {
      method: "POST",
      headers: {
        "Content-Type": "application/json",
      },
      body: JSON.stringify(newUser),
    })
      .then((res) => res.json())
      .then((data) => setCurrentUser(data));

    setUsername("");
  }

  function createGame() {
    const newGame = {
      score: 0,
      user_id: currentUser.id,
    };

    fetch("http://localhost:9292/games", {
      method: "POST",
      headers: {
        "Content-Type": "application/json",
      },
      body: JSON.stringify(newGame),
    })
      .then((res) => res.json())
      .then((data) => setCurrentGame(data));
  }

  useEffect(() => {
    fetch("http://localhost:9292/users")
      .then((res) => res.json())
      .then(setAllUsers);
  }, []);

  function updateGame(game) {
    setCurrentGame(game);
  }

  function handleChangeUsers(e) {
    let foundUser = allUsers.find((user) => user.name === e.target.value);
    setCurrentUser(foundUser);
  }

  return (
    <div>
      <h2>Welcome to the WordMaster game</h2>
      <h4>Enter your name to start playing</h4>
      <h3>Returning user?</h3>
      <select onChange={(e) => handleChangeUsers(e)}>
        <option></option>
        {allUsers.map((user) => (
          <option key={user.id}>{user.name}</option>
        ))}
      </select>
      <form onSubmit={(e) => createUser(e)}>
        <input
          value={userName}
          onChange={(e) => setUsername(e.target.value)}
          type="text"
          placeholder="Type your name..."
        ></input>
        <button type="submit">Create User</button>
      </form>
      <button onClick={createGame}>Start Playing</button>
      <Game
        currentUser={currentUser}
        currentGame={currentGame}
        updateGame={updateGame}
      />
    </div>
  );
}

export default Home;
