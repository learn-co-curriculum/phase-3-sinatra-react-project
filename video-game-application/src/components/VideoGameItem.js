import React from "react";

function VideoGameItem ({game, handleRemoveGame}) {

    return(
        <div className="item_div">
            <img className="item_image" src={game.image} alt={game.title}/>
            <div className="item_div2">
                <h3>Title: {game.title}</h3>
                <h4>Creators: {game.company_game_was_made_by}</h4>
                <h4>Rating: {game.rating}</h4>
                <button onClick={() => handleRemoveGame(game)}>DELETE</button>
            </div>
        </div>
    )
}

export default VideoGameItem;