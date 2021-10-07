import React from "react";
import ArtCard from "./ArtCard";

function ArtGallery({artworks, update, setUpdate}) {
    let artWorkCard = artworks.map((artwork)=>{return(
      <ArtCard 
      key={artwork.id}
      artwork={artwork}
      update={update}
      setUpdate={setUpdate}
      />
    )})
  return (
    <ul className="cards">
        {artWorkCard}
    </ul>
  );
}

export default ArtGallery;
