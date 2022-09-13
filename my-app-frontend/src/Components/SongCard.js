import React, { useState } from "react"

function SongCard ({song}) {
    const [showLyrics, setShowLyrics] = useState(false)
    const [likeToggle, setLikeToggle] = useState(true)

    const handleLyrics= () => {
        setShowLyrics(showLyrics => !showLyrics)
    }
    const handleToggle = (e) => {
        setLikeToggle(likeToggle => !likeToggle)
    }



    return (
        <div className="gridContainer">
            <img className="image"onMouseEnter={handleLyrics} alt="album" src={song.image} onMouseLeave={handleLyrics}/>
            <div>
                {likeToggle ? (
                <button onClick={handleToggle} className="likeToggle" >I dig it!</button>
                ) : (
                <button onClick={handleToggle} className="likeToggle" >Not for me, NEXT!</button>
                )} 
            </div>
            <div className="songTitle">{song.title}</div>
            <div className="artist">{song.artist}</div>
            <p className="lyrics">{showLyrics ? song.lyrics : null}</p>
            
        </div>
    )
    }

    export default SongCard