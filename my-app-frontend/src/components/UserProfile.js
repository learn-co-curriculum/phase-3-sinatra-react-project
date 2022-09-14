import React, { useContext, useEffect, useState } from "react";
import { UserContext } from "../Context/UserProvider";
import GameCard from "./GameCard";
import NameForm from "./NameForm";

function UserProfile() {
  let [currentUser, setCurrentUser] = useContext(UserContext);
  const [currentUserGames, setCurrentUserGames] = useState([]);
  const [showForm, setShowForm] = useState(false);

  function handleDeleteUser() {
    fetch(`http://localhost:9292/users/${currentUser.id}`, {
      method: "DELETE",
    });
    alert("Your profile was deleted!");
    setCurrentUser([]);
  }

  useEffect(() => {
    fetch(`http://localhost:9292/userGames/${currentUser.id}`)
      .then((res) => res.json())
      .then(setCurrentUserGames);
  }, [currentUser]);

  function handleShowForm() {
    setShowForm((showForm) => !showForm);
  }

  return (
    <div>
      <h1>Hi {currentUser.name}!</h1>
      {showForm ? <NameForm handleShowForm={handleShowForm} /> : null}
      <button onClick={handleShowForm}>
        {showForm ? "Keep my name" : "Edit your name"}
      </button>
      <button onClick={handleDeleteUser}>Delete your profile</button>
      {currentUserGames.map((game) => (
        <GameCard key={game.id} game={game} />
      ))}
    </div>
  );
}

export default UserProfile;
