import React from 'react'
import { NavLink } from "react-router-dom"


function NavBar () {
    return(
        <div className="navbar">
            <NavLink exact to ="/"> About </NavLink>
            <NavLink to="/remembers"> I Remember </NavLink>
            <NavLink to="/remembers/user"> User </NavLink>

            
        </div>
    )

}
export default NavBar