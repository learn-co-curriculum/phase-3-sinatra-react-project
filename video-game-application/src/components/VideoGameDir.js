import React from "react";
import VideoGameItem from "./VideoGameItem"

function VideoGameDir ({videoGames, handleRemoveGame}) {

    return(
        <div>
            <h1 className="directory_header">Video Game Directory</h1>
            <div className="image_grid">
                {videoGames.map(game => (<VideoGameItem key={game.id} game={game} handleRemoveGame={handleRemoveGame}/>))}
            </div>
        </div>
    )
}

export default VideoGameDir;