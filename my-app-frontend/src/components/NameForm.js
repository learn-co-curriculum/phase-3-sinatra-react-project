import React, { useContext, useState } from "react";
import { UserContext } from "../Context/UserProvider";

function NameForm({ handleShowForm }) {
  let [currentUser, setCurrentUser] = useContext(UserContext);
  const [userName, setUserName] = useState(currentUser.name);

  function handleNewSubmitName(e) {
    e.preventDefault();

    fetch(`http://localhost:9292/users/${currentUser.id}`, {
      method: "PATCH",
      headers: {
        "Content-Type": "application/json",
      },
      body: JSON.stringify({
        name: userName,
      }),
    })
      .then((res) => res.json())
      .then(setCurrentUser);

    handleShowForm();
  }

  return (
    <div>
      <form onSubmit={handleNewSubmitName}>
        <input
          type="text"
          value={userName}
          onChange={(e) => setUserName(e.target.value)}
        ></input>
        <input type="submit"></input>
      </form>
    </div>
  );
}

export default NameForm;
