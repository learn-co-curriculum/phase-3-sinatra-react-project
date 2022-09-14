import React, { useState, useEffect } from "react"
import ArtistDetail from "./ArtistDetail"

function ArtistItem({artist, genre}) {
    const [likeToggle, setLikeToggle] = useState(artist.likes)
    const [showInfo, setShowInfo] = useState(false)
    const [moreInfo, setMoreInfo] = useState([])
    const [songInfo, setSongInfo] = useState([])

    useEffect(() => {
        fetch(`http://localhost:9292/genre/${artist.id}`)
          .then((r) => r.json())
          .then((moreInfo) => setMoreInfo(moreInfo));
      }, []);

      useEffect(() => {
        fetch(`http://localhost:9292/song/${artist.id}`)
          .then((r) => r.json())
          .then((songInfo) => setSongInfo(songInfo));
      }, []);

    const handleToggle = (e) => {
        setLikeToggle(likeToggle => !likeToggle)
    }

    const handleInfo = () => {
        setShowInfo(!showInfo)
    } 

    return (
        <div>
            <h1>{artist.name}</h1>
            <img src={artist.image_url} alt="Artist Pic" onClick={handleInfo}/>
            <p>{showInfo ? <ArtistDetail moreInfo={moreInfo} songInfo={songInfo}/> : null}</p>
            <div>
                {likeToggle ? (
                    <button onClick={handleToggle}>Liked!</button>
                ) : (
                    <button onClick={handleToggle}>Not Liked</button>
                )}
            </div>
        </div>
    )
}

export default ArtistItem