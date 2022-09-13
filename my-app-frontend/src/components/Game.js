import React from "react";
import { useEffect, useState } from "react";

function Game() {
  useEffect(() => {
    fetch("http://localhost:9292/words")
      .then((res) => res.json())
      .then((data) => console.log(data));
  }, []);

  return (
    <div>
      <img></img>
      <button></button>
      <button></button>
      <button></button>
      <button></button>
    </div>
  );
}

export default Game;
