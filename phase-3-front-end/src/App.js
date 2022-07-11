import "./App.css";
import "./index.css";
import React from "react";
import { BrowserRouter as Router, Routes, Route, Link } from "react-router-dom";
import AllUsers from "./components/AllUsers";
import Home from "./components/Home";
import Header from "./components/Header";
import CreateNewPost from "./components/CreateNewPost";
import CreateNewUsers from "./components/CreateNewUsers";
function App() {
  return (
    <Router>
      <div className="App">
        <Header />
        <div
          style={{
            fontFamily: "monospace",
            fontSize: "20px",
            margin: "20px",
            wordSpacing: "1px",
            display: "flex",
            justifyContent: "space-between",
          }}
        >
          <nav>
            <Link to="/">Home</Link>
          </nav>
          <nav>
            <Link to="/post">Create new post</Link>
          </nav>

          <nav>
            <Link to="/users">Create new user</Link>
          </nav>
          <nav>
            <Link to="/allUsers">See all users</Link>
          </nav>
        </div>

        <Routes>
          <Route path="/" element={<Home />} />
          <Route path="/users" element={<CreateNewUsers />} />
          <Route path="/post" element={<CreateNewPost />} />
          <Route path="/allusers" element={<AllUsers />} />
        </Routes>
      </div>
    </Router>
  );
}

export default App;
