import { NavLink } from "react-router-dom";

function NavBar() {
  return (
    <nav>
      <NavLink exact to="/">
        Home
      </NavLink>
      <NavLink exact to="/MyProfile">
        My Profile
      </NavLink>
      <NavLink exact to="/TopScores">
        Top Scores
      </NavLink>
    </nav>
  );
}

export default NavBar;
