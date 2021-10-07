import React from "react";
import ArtCard from "./ArtCard";

function ArtGallery({artworks, handleDeletion, handleOnePiece}) {
    let artWorkCard = artworks.map((artwork)=>{return(
      <ArtCard 
      key={artwork.id}
      artwork={artwork}
      handleDeletion={handleDeletion}
      handleOnePiece={handleOnePiece}
      />
    )})
  return (
    <ul className="cards-flex-box">
        {artWorkCard}
    </ul>
  );
}

export default ArtGallery;
