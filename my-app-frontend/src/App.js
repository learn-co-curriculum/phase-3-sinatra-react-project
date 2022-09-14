import logo from "./logo.svg";
import "./App.css";
import ScoreBoard from "./components/Scoreboard";
import Home from "./components/Home";
import UserProfile from "./components/UserProfile";
import Game from "./components/Game";
import AllScores from "./components/AllScores";
import { UserProvider } from "./Context/UserProvider";
import NavBar from "./components/Navbar";

function App() {
  return (
    <div>
      <UserProvider>
        <NavBar />
        <Home />
        <AllScores />
        <UserProfile />
      </UserProvider>
    </div>
  );
}

export default App;
