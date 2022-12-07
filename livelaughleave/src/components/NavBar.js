import React from "react"
import {NavLink} from 'react-router-dom'

function NavBar() {
    return (
        <div className="nav">
            <ul className="navtitle">
            {/* <img href="/liveloveleave.gif"/> */}
            <h1 className="nav-title">Live, Laugh, Leave</h1>
            <NavLink to="/"><a className="nav-links"><span>Home Sweet Home</span></a></NavLink>
            <NavLink to="/destination"><a className="nav-links"><span>Destinations</span></a></NavLink>
            <NavLink to="/search"><a className="nav-links"><span>Search</span></a></NavLink>
            <NavLink to="/reviews"><a className="nav-links"><span>Reviews</span></a></NavLink>
            </ul>
        </div>

    )

}

export default NavBar