import React from 'react';
import { Link, Switch } from 'react-router-dom'

function NavBar () {
    
    
    return (
        <nav>
            <Link className="navLink" to="/attractions">Concerts</Link>
            <Link className="navLink" to="/attractions">Eateries</Link>
            <Link className="navLink" to="/">Home</Link>
        </nav>
    )
}

export default NavBar