import React, { useState } from "react";
import { useNavigate } from "react-router-dom";

function CreateNewUsers() {
  const [name, setName] = useState("");
  const navigate = useNavigate();

  function handleChange(e) {
    setName(e.target.value);
  }

  const handleSubmit = async (e) => {
    e.preventDefault();
    const body = { name: name };
    const headers = {
      Accept: "application/json",
      "Content-Type": "application/json",
    };
    const options = {
      method: "POST",
      headers,
      body: JSON.stringify(body),
    };
    await fetch("http://localhost:9292/users", options);
    setName("");
    navigate("/allUsers");
  };

  return (
    <div>
      <h1 className="newuser">Create new user</h1>
      <form style={{ textAlign: "center" }} onSubmit={handleSubmit}>
        <label> new user </label>
        <input
          type="text"
          value={name}
          autoFocus={true}
          onChange={handleChange}
        ></input>

        <button type="submit">Create new user</button>
      </form>
    </div>
  );
}

export default CreateNewUsers;
