import React, { useState } from "react";
import "../App.css"

function SongForm({songs, setSongs}) {
    const [title, setTitle] = useState("")
    const [artist, setArtist] = useState("")
    const [album, setAlbum] = useState("")
    const [lyrics, setLyrics] = useState("")

    const handleSubmit = (e) => {
        e.preventDefault()
        let newSong = {
            title: title,
            artist: artist,
            album: album,
            lyrics: lyrics,
        }

        setSongs([...songs, newSong])

        setTitle("")
        setArtist("")
        setAlbum("")
        setLyrics("")

        fetch("http://localhost:8004/songs", {
            method: 'POST',
            headers: {
                "Content-Type": 'application.json',
            },
            body: JSON.stringify(newSong)
        })
        .then(response => response.json())
        .then(setSongs([...songs, newSong]))

        setTitle("")
        setArtist("")
        setAlbum("")
        setLyrics("")
    }

    return (
        <form onSubmit={handleSubmit}>
        <div className="main">
          <div className="sub-main">
            <div>
            <div className="imgs">
                <div className="container-image">
                    <img src="https://img.freepik.com/free-vector/music-note-icon-vector-illustration-design_9999-2183.jpg?size=338&ext=jpg" alt="Profile" className="profile"/>
                </div>
            </div>
            <div>
                <h1>Add a Song</h1>
                <div>
                    <input type="text" placeholder="Title" className="title" value={title} onChange={e => setTitle(e.target.value)}/>
                </div>
                <div className="second-input">
                    <input type="text" placeholder="Artist" className="title" value={artist} onChange={e => setArtist(e.target.value)}/>
                </div>
                <div className="second-input">
                    <input type="text" placeholder="Album Url" className="title" value={album} onChange={e => setAlbum(e.target.value)}/>
                </div>
                <div className="second-input">
                    <input type="text" placeholder="Lyrics" className="title" value={lyrics} onChange={e => setLyrics(e.target.value)}/>
                </div>
                <div className="submit-button">
                    <button type="submit">Submit</button>
                </div>
            </div>
            </div>
          </div>
        </div>
        </form>
      );
    }
 export default SongForm