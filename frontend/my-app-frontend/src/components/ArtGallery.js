import React from "react";
import ArtCard from "./ArtCard";

function ArtGallery({artworks}) {
    let artWorkCard = artworks.map((artwork)=>{return(
      <ArtCard 
      key={artwork.id}
      artwork={artwork}
      />
    )})
  return (
    <ul className="cards">
        {artWorkCard}
    </ul>
  );
}

export default ArtGallery;
