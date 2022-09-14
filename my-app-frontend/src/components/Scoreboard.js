import React from "react";

function ScoreBoard({ currentGame }) {
  return (
    <div>
      <h2>GAME OVER!!!</h2>
      <h4>Your score is: {currentGame.score} Congrats!</h4>
    </div>
  );
}

export default ScoreBoard;
