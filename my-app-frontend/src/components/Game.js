import React from "react";
import { useEffect, useState } from "react";
import ScoreBoard from "./Scoreboard";

function Game({ currentGame, updateGame, currentUser }) {
  const [randomFourWords, setRandomFourWords] = useState([]);
  const [currentImage, setCurrentImage] = useState([]);
  const [wordCount, setWordCount] = useState(0);
  const [gameOver, setGameOver] = useState(false);

  function postRequestGameWords(word_id, game_id, boolean) {
    const newGameWord = {
      word_id: word_id,
      game_id: game_id,
      "correct?": boolean,
    };

    fetch("http://localhost:9292/gameWords", {
      method: "POST",
      headers: {
        "Content-Type": "application/json",
      },
      body: JSON.stringify(newGameWord),
    })
      .then((res) => res.json())
      .then((data) => console.log(data));
  }

  useEffect(() => {
    randomWordsFetch();
  }, []);

  function randomWordsFetch() {
    fetch("http://localhost:9292/randomwords")
      .then((res) => res.json())
      .then((data) => {
        setRandomFourWords(data.word_array);
        setCurrentImage(data.word);
      });
  }

  function handleClickButton(e) {
    setWordCount(wordCount + 1);
    if (wordCount < 10) {
      if (e.target.innerText === currentImage.word) {
        fetch(`http://localhost:9292/games/${currentGame.id}`, {
          method: "PATCH",
          headers: {
            "Content-Type": "application/json",
          },
          body: JSON.stringify({
            score: currentGame.score + 10,
          }),
        })
          .then((res) => res.json())
          .then((data) => updateGame(data));

        randomWordsFetch();

        postRequestGameWords(currentImage.id, currentGame.id, true);
      } else {
        randomWordsFetch();
        postRequestGameWords(currentImage.id, currentGame.id, false);
      }
    } else {
      setGameOver(true);
    }
  }

  let buttons = randomFourWords.map((word) => {
    return (
      <button key={word.id} onClick={(e) => handleClickButton(e)}>
        {word.word}
      </button>
    );
  });

  return (
    <div>
      {gameOver ? (
        <ScoreBoard currentGame={currentGame} />
      ) : (
        <div>
          <h2>{currentUser.name} is playing</h2>
          <h3>Score: {currentGame.score}</h3>
          {<img src={currentImage.image_url}></img>}
          {buttons}
        </div>
      )}
    </div>
  );
}

export default Game;
