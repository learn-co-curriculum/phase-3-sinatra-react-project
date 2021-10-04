import React, {useState} from "react";

function ArtCard({artwork}) {
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
    </li>
  );
}

export default ArtCard;