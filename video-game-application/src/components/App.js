
import React, {useEffect, useState} from "react";
import {
    Switch,
    Route,
  } from "react-router-dom";
import NavBar from "./NavBar";
import "../App.css";
import PlayerTable from "./PlayerTable";
import VideoGameDir from "./VideoGameDir";
import VideoGameForm from "./VideoGameForm";
import Home from "./Home";




function App() {

  const [videoGames, setVideoGames] = useState([])
  const [players, setPlayers] = useState([])
  const [searchPlayers, setSearchPlayers] =useState([])
  const [formTitle, setFormTitle] = useState("");
  const [formImage, setFormImage] = useState("");
  const [formRating, setFormRating] = useState("");
  const [formCreator, setFormCreator] = useState("");

     
    useEffect(() => {
        fetch("http://localhost:9292/video_games")
        .then(res => res.json())
        .then(data => setVideoGames(data))
    }, [])

    useEffect(() => {
      fetch("http://localhost:9292/players")
      .then(res => res.json())
      .then(data => setPlayers(data))
  }, [])

    function handleUpdateTitle(e) {
      setFormTitle(e.target.value)
    }

    function handleUpdateRating(e) {
      setFormRating(e.target.value)
    }

    function handleUpdateCreator(e) {
      setFormCreator(e.target.value)
    }

    function handleUpdateImage(e) {
      setFormImage(e.target.value)
    }


    function handleAddGame(){
      const newGame = {
        title: formTitle,
        image: formImage,
        rating: formRating,
        company_game_was_made_by: formCreator,
      }
      
      const configObj = {
          method: "POST",
          headers: {'Content-Type': 'application/json'},
          body: JSON.stringify(newGame)
      }
      
      fetch("http://localhost:9292/video_games", configObj)
      .then(res => res.json())
      .then(game => setVideoGames([...videoGames, game]))
      
      setFormImage("")
      setFormTitle("")
      setFormCreator("")
      setFormRating("")
    }

    function handleRemoveGame(games){

      fetch(`http://localhost:9292/video_games/${games.id}`, {method: "DELETE"})
      
      let newGames = videoGames.filter(game => game.title !== games.title)
      setVideoGames(newGames)

    }

    const filteredPlayers = players.filter(player => player.username.includes(searchPlayers))

    function handleSearchPlayers (e) {
      setSearchPlayers(e.target.value)
    }
    
    return(
        <div className="app">
          <NavBar/>
          <Switch>
            <Route exact path="/">
              <Home />
            </Route>
            <Route exact path="/form">
              <VideoGameForm formTitle={formTitle} formImage={formImage} formRating={formRating} formCreator={formCreator}
              onChangeTitle={handleUpdateTitle} onChangeImage={handleUpdateImage} onChangeRating={handleUpdateRating} onChangeCreator={handleUpdateCreator} onSubmitForm={handleAddGame}
              onSubmitRemove={handleRemoveGame}/>
            </Route>
            <Route path="/directory">
              <VideoGameDir videoGames={videoGames} handleRemoveGame={handleRemoveGame}/>
            </Route>
            <Route exact path="/table">
              <PlayerTable players={filteredPlayers} handleSearch={handleSearchPlayers}/>
            </Route>
            <Route path="*">
              <h1>404 not found</h1>
            </Route>
          </Switch>
        </div>
    );
}

export default App;