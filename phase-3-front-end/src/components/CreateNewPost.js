import React, { useState } from "react";
import { useNavigate } from "react-router-dom";

function CreateNewPost() {
  const [title, setTitle] = useState("");
  const [body, setBody] = useState("");
  const [genre, setGenre] = useState("");
  const [user_id, setUser_id] = useState("");
  const navigate = useNavigate();

  function handleSubmit(e) {
    e.preventDefault();
    const post = { title, body, genre, user_id };
    fetch("http://localhost:9292/posts", {
      method: "POST",
      headers: {
        "Content-type": "application/json",
      },
      body: JSON.stringify(post),
    });

    navigate("/");
  }

  return (
    <div className="create">
      <h1
        style={{
          margin: "20px",
          padding: "20px",
          color: "wheat",
        }}
      >
        Create new post
      </h1>
      <form onSubmit={handleSubmit}>
        <input
          type="text"
          name="title"
          value={title}
          placeholder="enter title"
          onChange={(e) => setTitle(e.target.value)}
        />
        <input
          type="text"
          name="body"
          value={body}
          placeholder="enter body"
          onChange={(e) => setBody(e.target.value)}
        />
        <input
          type="text"
          name="genre"
          value={genre}
          placeholder="enter genre"
          onChange={(e) => setGenre(e.target.value)}
        />
        <input
          type="text"
          name="user_id"
          value={user_id}
          placeholder="enter user id"
          onChange={(e) => setUser_id(e.target.value)}
        />
        <button className="button" type="submit">
          Add
        </button>
      </form>
    </div>
  );
}

export default CreateNewPost;
