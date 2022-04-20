import { NavLink } from "react-router-dom";

function NavKids() {
    return <div className="navBar" >
        <NavLink to="/">
        <h1 className="navChild" >Home</h1> 
        </NavLink>
        <NavLink to="/museums">
        <h1 className="navChild">Museums</h1>
        </NavLink>
        <NavLink to="/trips">
        <h1 className="navChild">Trips</h1>
        </NavLink>

    </div>
}

export default NavKids;