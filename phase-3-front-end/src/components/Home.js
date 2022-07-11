import React, { useEffect, useState } from "react";
import EditPost from "./EditPost";

function Home() {
  const [allPosts, setAllPosts] = useState([]);
  const [editId, setEditId] = useState(null);

  useEffect(() => {
    fetch("http://localhost:9292/posts")
      .then((res) => res.json())
      .then((data) => setAllPosts(data));
  }, []);

  function handleDeletePost(id) {
    fetch(`http://localhost:9292/posts/${id}`, {
      method: "DELETE",
    });
    window.location.reload();
  }

  const getAllPosts = allPosts.map((post) => {
    if (editId === post.id) {
      return (
        <div>
          <EditPost post={post} />
          <button
            style={{ border: "none", backgroundColor: "red", color: "white" }}
            onClick={() => setEditId(null)}
          >
            Cancel
          </button>
        </div>
      );
    } else {
      return (
        <div className="allposts" key={post.id}>
          <h1> Title -- {post.title}</h1>
          <p> Genre -- {post.genre}</p>
          <p>{post.body}</p>
          <p>
            {" "}
            <span>User Id</span> : {post.user_id}
          </p>
          <button
            style={{ color: "white", backgroundColor: "red" }}
            onClick={() => handleDeletePost(post.id)}
          >
            Delete
          </button>
          <button onClick={() => setEditId(post.id)}>Edit</button>
        </div>
      );
    }
  });

  return (
    <div>
      <h1 className="homeone">All posts</h1>
      <div></div>
      {getAllPosts}
    </div>
  );
}

export default Home;
