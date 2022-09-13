import React from "react";
import { useEffect, useState } from "react";

function Game({currentGame, updateGame}) {
  const [randomFourWords, setRandomFourWords] = useState([])
  const [currentImage, setCurrentImage] = useState([])
  const [score, setScore] = useState(0)



  useEffect(() => {
    fetch("http://localhost:9292/randomwords")
      .then((res) => res.json())
      .then((data) => {
        setRandomFourWords(data.word_array)
        setCurrentImage(data.word)
      });
  }, []);


  function handleClickButton(e){
    if (e.target.innerText === currentImage.word){
      fetch(`http://localhost:9292/games/${currentGame.id}`, {
        method : "PATCH",
        headers : {
          "Content-Type" : "application/json"
        },
        body : JSON.stringify({
          score : currentGame.score + 10
        })
      })
      .then(res => res.json())
      .then(data => updateGame(data))
    }
  }


  let buttons = randomFourWords.map(word => {
   return <button key={word.id} onClick={(e) => handleClickButton(e)}>{word.word}</button>
  })


  return (
    <div>
      {randomFourWords.length > 0 ?  
       <div> 
        <h3>Score: {currentGame.score}</h3>
      { <img src={currentImage.image_url}></img> }
      {buttons}
       </div> : null } 
  
    </div>
  );
}

export default Game;
