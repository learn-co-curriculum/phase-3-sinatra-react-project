import React from "react";
import {Link} from "react-router-dom";

function NavBar() {

    return(
      <header className="navbar">
        <nav className="nav">
          <ul className="nav">
               <Link to="/" className="nav">Home</Link>  |  
               <Link to="/form" className="nav">Add Game</Link>  | 
               <Link to="/directory" className="nav">Game Directory</Link>  |
               <Link to="/table" className="nav">Players</Link>
          </ul>
            
            
        </nav>
      </header>
    )
}

export default NavBar