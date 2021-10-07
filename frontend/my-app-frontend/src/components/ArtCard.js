import React, {useState} from "react";
import {Link} from "react-router-dom"

function ArtCard({artwork, handleDeletion, handleOnePiece}) {
  const[inStock,setInStock]=useState(true)
  const{title, image, price}= artwork

  function handleInStock(){
    setInStock(!inStock)
  }

  

  return (
    <li className="card">
      <img src={image} alt={"art name"} />
      <h4>{title}</h4>
      <p>Price: ${price}</p>
      {inStock ? (
        <button className="primary" onClick={handleInStock}>Available</button>
      ) : (
        <button onClick={handleInStock}>Sold</button>
      )}
      <button className="primary" onClick={()=>handleDeletion(artwork.id)}>Delete</button>
      <Link to={`/art/details`}><button className="primary" onClick={()=>handleOnePiece(artwork.id)}>View Full Details</button></Link>
    </li>
  );
}

export default ArtCard;