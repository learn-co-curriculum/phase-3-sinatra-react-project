import React from 'react';
import { Link, Switch } from 'react-router-dom'

function NavBar ({attractionClick}) {
    
    
    return (
        <nav>
            <Link className="navLink" onClick={attractionClick} value="concerts" to="/attractions">Concerts</Link>
            <Link className="navLink" onClick={attractionClick} value="eateries" to="/attractions">Eateries</Link>
            <Link className="navLink" to="/">Home</Link>
        </nav>
    )
}

export default NavBar