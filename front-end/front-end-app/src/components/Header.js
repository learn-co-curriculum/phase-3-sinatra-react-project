import React from "react";
import { NavLink, Link } from "react-router-dom";

const Header = ({ isDarkMode, onToggleDarkMode }) => {
  const buttonTextContent = isDarkMode ? "Light Mode" : "Dark Mode";

  return (
    <header className="navigation">
      <h1 className="branding">
        <Link to="/">
          <span className="logo">{"📚"}</span>
          Open Library
        </Link>
      </h1>
      <nav>
        <NavLink className="button" exact to="/books">
          All Books
        </NavLink>
        <NavLink className="button" to="/books/new">
          Add Book
        </NavLink>
        <NavLink className="button" to="/about">
          About
        </NavLink>
        <button onClick={onToggleDarkMode}>{buttonTextContent}</button>
      </nav>
    </header>
  );
};

export default Header;