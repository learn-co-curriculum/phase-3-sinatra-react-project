import logo from "./logo.svg";
import "./App.css";
import ScoreBoard from "./components/Scoreboard";
import Home from "./components/Home";
import Form from "./components/Form";
import Game from "./components/Game";

function App() {
  return (
    <div>
      <Home />
      <Form />
      <Game />
      <ScoreBoard />
    </div>
  );
}

export default App;
