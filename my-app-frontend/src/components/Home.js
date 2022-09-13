import React from "react";
import Game from "./Game";

function Home() {
  return (
    <div>
      <h2>Welcome to the WordMaster game</h2>
      <h4>Enter your name to start playing</h4>
      <form>
        <input type="text" placeholder="Type your name..."></input>
        <button type="submit">Start Playing</button>
      </form>
    </div>
  );
}

export default Home;
