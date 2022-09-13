import React from "react";
import { NavLink } from "react-router-dom";

function NavBar(){
    return(
        <div>
           <NavLink to="/user" exact>User</NavLink>
           <NavLink to="/create_characters" exact>Make a Character!</NavLink>
           <NavLink to="character_list" exact>Archives</NavLink>
        </div>
    )
}

export default NavBar;