import React, { useState, useEffect } from "react"
import ArtistDetail from "./ArtistDetail"

function ArtistItem({artist, handleToggle}) {
    
    const [artistInfo, setArtistInfo] = useState([])
    const [showInfo, setShowInfo] = useState(false)
    const [moreInfo, setMoreInfo] = useState([])
    const [songInfo, setSongInfo] = useState([])
    const [likeToggle, setLikeToggle] = useState(artist.likes)
    
    useEffect(() => {
        fetch(`http://localhost:9292/artist/${artist.id}`)
          .then((r) => r.json())
          .then((artistInfo) => setArtistInfo(artistInfo));
      }, []);
   

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

    // const handleToggle = () => {
    //     let newLike = setLikeToggle(!likeToggle)
    //     handleLikePatch(newLike)
    // }

    // const handleLikePatch = () => {
    //     fetch(`http://localhost:9292/artist/${artist.id}`, {
    //         method: "PATCH",
    //         headers: {
    //             'Content-type': 'application/json'
    //         },
    //         body: JSON.stringify({likes: likeToggle})
    //     })
    //         .then(resp => resp.json())
    //         .then(console.log)
    // }
    

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
                    <button onClick={()=>handleToggle(artist, setArtistInfo, likeToggle, setLikeToggle)}>Liked!</button>
                ) : (
                    <button onClick={()=>handleToggle(artist, setArtistInfo, likeToggle, setLikeToggle)}>Not Liked</button>
                )}
            </div>
        </div>
    )
}

export default ArtistItem