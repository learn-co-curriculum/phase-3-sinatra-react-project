import React, { useState, useEffect } from "react"
import ArtistDetail from "./ArtistDetail"

function ArtistItem({artist, genre}) {
    const [likeToggle, setLikeToggle] = useState(artist.likes)
    const [showInfo, setShowInfo] = useState(false)
    const [moreInfo, setMoreInfo] = useState([])
    const [songInfo, setSongInfo] = useState([])
    const [songTitle, setSongTitle] = useState("")
    const [releaseDate, setReleaseDate] = useState("")
    const [genreId, setGenreId] = useState()

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

        
    const handleDelete = () => {
        fetch(`http://localhost:9292/song/${songInfo.id}`, {
            method: "DELETE"
        })
    }
    

    const handleToggle = (e) => {
        setLikeToggle(likeToggle => !likeToggle)
    }

    const handleInfo = () => {
        setShowInfo(!showInfo)
    } 



    const handleNewSong = (e) => {
        e.preventDefault()
            fetch("http://localhost:9292/song", {
            method:"POST", 
            headers: {"Content-Type": "application/json"},
            body: JSON.stringify({
                artist_id: artist.id,
                genre_id: genreId,
                song_title: songTitle,
                release_date: releaseDate
            })
        })
    
        .then(resp=>resp.json())
        .then(console.log)

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
                <button onClick={handleDelete}>DELETE</button>
            </div>
            <div>
            <form onSubmit={handleNewSong} >
                {/* This form submits new song */}
                 <input type="text" name="song" placeholder="Song Name" value={songTitle} onChange={(e) => setSongTitle(e.target.value)}/>
                 <input type="text" name="date" placeholder="Release Date" value={releaseDate} onChange={(e) => setReleaseDate(e.target.value)} />
                 <select id = "myList" onChange={(e) => setGenreId(e.target.value)} >
                    <option>---Choose Genre---</option>
                    {genre.map(gen=><option value={gen.id}>{gen.title}</option>)}
                </select>
                 <button type="submit">Add Song</button>
            </form>
            </div>
        </div>

     
    )
}

export default ArtistItem