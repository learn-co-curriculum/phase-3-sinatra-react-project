import React, { useState, useEffect } from "react";
import ArtistItem from "./ArtistItem";

function ArtistList() {
    const [artists, setArtists] = useState([]);
    const [genre, setGenre] = useState([]);
    const [song, setSong] = useState([]);
    
  
    useEffect(() => {
      fetch("http://localhost:9292/artist")
        .then((r) => r.json())
        .then((artists) => setArtists(artists));
    }, []);

    useEffect(() => {
      fetch("http://localhost:9292/genre")
        .then((r) => r.json())
        .then((genre) => setGenre(genre));
    }, []);

    useEffect(() => {
      fetch("http://localhost:9292/song")
        .then((r) => r.json())
        .then((song) => setSong(song));
    }, []);

    // useEffect(() => {
    //   fetch(`http://localhost:9292/artist/${artists.id}`)
    //     .then((r) => r.json())
    //     .then((artistInfo) => setArtistInfo(artistInfo));
    // }, []);

  

   

    const handleToggle = (artist, setArtistInfo, likeToggle, setLikeToggle) => {
      setLikeToggle(artist.likes)
      setLikeToggle(likeToggle => !likeToggle)
      let newLike = !likeToggle
      handleLikePatch(artist, setArtistInfo, newLike)
    }

      const handleLikePatch = (artist, setArtistInfo, newLike) => {
        fetch(`http://localhost:9292/artist/${artist.id}`, {
            method: "PATCH",
            headers: {
                'Content-type': 'application/json'
            },
            body: JSON.stringify({likes: newLike})
        })
            .then(resp => resp.json())
            .then(setArtistInfo)
    }

    


  
    return (
      <section>
        {artists.map((artist) => (
          <ArtistItem key={artist.id} artist={artist} genre={genre} song={song} setArtists={setArtists} handleToggle={handleToggle}/>
        ))}
      </section>
    );
  }

  export default ArtistList