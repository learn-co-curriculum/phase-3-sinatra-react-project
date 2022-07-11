import React, { useEffect, useState } from "react";
function AllUsers() {
  const [users, setUsers] = useState([]);

  useEffect(() => {
    fetch("http://localhost:9292/users")
      .then((res) => res.json())
      .then((data) => setUsers(data));
  }, []);

  const allUsers = users.map((user) => {
    return (
      <li
        style={{ margin: "20px", padding: "20px", textDecoration: "underline" }}
      >
        {user.name} - <span>ID</span> - {user.id}
      </li>
    );
  });
  // const getAllUsers = users.map((user , index) => <UserCard key={index} user={user} />)

  return (
    <div style={{ textAlign: "center", height: "100%" }}>
      <h1 className="alluser">All users</h1>
      {allUsers}
    </div>
  );
}

export default AllUsers;
