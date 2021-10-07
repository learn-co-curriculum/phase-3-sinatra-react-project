import React from "react";
import {Link} from "react-router-dom"

function Header() {
  return (
    <header>
      <h1>
        Zellar Gallery
      </h1>
      <Link to={`/`}><button className="headerButton">Home</button></Link>
      <Link to={`/art/new`}><button className="headerButton">Add New Art Piece</button></Link>
      <Link to={`/art/seller`}><button className="headerButton">Seller Page</button></Link>
    </header>
  );
}

export default Header;