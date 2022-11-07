import React from "react";
import { NavLink, Link } from "react-router-dom";

const Header = ({ isDarkMode, onToggleDarkMode }) => {
  const buttonTextContent = isDarkMode ? "Light Mode" : "Dark Mode";

  return (
    <header className="navigation">
      <h1 className="branding">
        <Link to="/">
          <span className="logo">{"//"}</span>
          Project Showcase
        </Link>
      </h1>
      <nav>
        <NavLink className="button" exact to="/projects">
          All Projects
        </NavLink>
        <NavLink className="button" to="/projects/new">
          Add Project
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