import { NavLink } from "react-router-dom";
function NavChild() {
    return <div className="navBar" >
        <div>Texan Museum Tour</div>
        <NavLink exact to="/" className="main-nav" activeClassName="main-nav-active">
            <div className="navChild">Home</div>
        </NavLink>
        <NavLink exact to="/museums" className="main-nav" activeClassName="main-nav-active">
            <div className="navChild">Museums</div>
        </NavLink>
        <NavLink exact to="/trips" className="main-nav" activeClassName="main-nav-active">
            <div className="navChild" >Trips</div>
        </NavLink>
    </div>
}
export default NavChild;