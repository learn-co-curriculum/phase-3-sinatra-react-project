import React, { useState } from "react";

function EditPost({ post, allPosts, setAllPosts, setEditId }) {
  const [title, setTitle] = useState(post.title);
  const [body, setBody] = useState(post.body);
  const [genre, setGenre] = useState(post.genre);
  const [user_id, setUser_id] = useState(post.user_id);

  function handleSubmit(e) {
    e.preventDefault();
    const formData = { title, body, genre, user_id };
    fetch(`http://localhost:9292/posts/${post.id}`, {
      method: "PATCH",
      headers: {
        "Content-type": "application/json",
      },
      body: JSON.stringify(formData),
    })
      .then((res) => res.json())
      .then((data) => {
        setEditId(null);
        const newPosts = allPosts.filter((post) => post.id !== data.id);
        setAllPosts([data, ...newPosts]);
        console.log(data);
      });
  }

  return (
    <div>
      <h1 style={{ textAlign: "center" }}>Edit post</h1>
      <form onSubmit={handleSubmit}>
        <input
          type="text"
          name="title"
          value={title}
          placeholder="Enter new title"
          onChange={(e) => setTitle(e.target.value)}
        />
        <input
          type="text"
          name="body"
          value={body}
          placeholder="Enter new body"
          onChange={(e) => setBody(e.target.value)}
        />
        <input
          type="text"
          name="genre"
          value={genre}
          placeholder="Enter new genre"
          onChange={(e) => setGenre(e.target.value)}
        />
        <input
          type="text"
          name="user_id"
          value={user_id}
          placeholder="Enter new user id"
          onChange={(e) => setUser_id(e.target.value)}
        />
        <button
          style={{
            border: "none",
            backgroundColor: "darkgreen",
            color: "white",
          }}
          type="submit"
        >
          Update
        </button>
      </form>
    </div>
  );
}

export default EditPost;
