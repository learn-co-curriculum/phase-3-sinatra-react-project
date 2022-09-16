import React from 'react';
import { Link, Switch } from 'react-router-dom'

function NavBar ({attractionClick}) {
    
    function handleClick(e) {
        attractionClick(e.target.id)
    }
    
    return (
        <nav className="navbar navbar-expand-lg bg-light">
            <Link className="navLink" to="/">Home</Link>
            <Link className="navLink" id="concerts" onClick={handleClick} to="/attractions">Concerts</Link>
            <Link className="navLink" id="eateries" onClick={handleClick}  to="/attractions">Eateries</Link>
        </nav>
    )
}

export default NavBar