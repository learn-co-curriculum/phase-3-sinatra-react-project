import React from 'react';
import { Link, Switch } from 'react-router-dom'

function NavBar ({attractionClick}) {
    
    function handleClick(e) {
        attractionClick(e.target.id)
    }
    
    return (
        <nav>
            <Link className="navLink" id="concerts" onClick={handleClick} to="/attractions">Concerts</Link>
            <Link className="navLink" id="eateries" onClick={handleClick}  to="/attractions">Eateries</Link>
            <Link className="navLink" to="/">Home</Link>
        </nav>
    )
}

export default NavBar