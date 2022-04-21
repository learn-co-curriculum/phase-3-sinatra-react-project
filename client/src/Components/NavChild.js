import { NavLink } from "react-router-dom";
function NavChild() {
    return <div className="navBar" >
        <NavLink to="/">
            <div className="navChild">Home</div>
        </NavLink>
        <NavLink to="/museums">
            <div className="navChild">Museums</div>
        </NavLink>
        <NavLink to="/trips">
            <div className="navChild">Trips</div>
        </NavLink>
    </div>
}
export default NavChild;