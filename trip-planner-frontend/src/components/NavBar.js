import React from 'react';
import { Link, Switch } from 'react-router-dom'

function NavBar ({resetChosen}) {
    
    
    return (
        <nav>
            <Link className="navLink" to="/cities">Log out</Link>
            <Link className="navLink" to="/bands">Choose Fighter</Link>
            <Link className="navLink" to="/">Add Fighter</Link>
        </nav>
    )
}

export default NavBar