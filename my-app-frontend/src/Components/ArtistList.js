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

  
    return (
      <section>
        {artists.map((artist) => (
          <ArtistItem key={artist.id} artist={artist} genre={genre} song={song}/>
        ))}
      </section>
    );
  }

  export default ArtistList