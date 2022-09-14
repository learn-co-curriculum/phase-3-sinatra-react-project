import React from "react";

function ArtistDetail({moreInfo, songInfo}) {
    return (
        <div>
            <h1>Title: {songInfo.song_title}</h1>
            <label>Release Date: {songInfo.release_date}</label>
            <p>Genre: {moreInfo.title}</p>
        </div>
    )
}


export default ArtistDetail