import React from "react";
import { Link } from "react-router-dom";

function NavBar() {
  return (
    <div>
      <h1>Travel Destinations Application</h1>
      <nav className="nav">
        <ul className="links">
          <li>
            <Link to="/">Home Destinations</Link>
          </li>
          <li>
            <Link to="/add_new_destinations">Add New Destination</Link>
          </li>
          <li>
            <Link to="/add_new_reviews">Add New Review</Link>
          </li>
          {/* <li>
            <Link to="/favorite_destinations">Favorite Destinations</Link>
          </li> */}
        </ul>
      </nav>
    </div>
  );
}

export default NavBar;
