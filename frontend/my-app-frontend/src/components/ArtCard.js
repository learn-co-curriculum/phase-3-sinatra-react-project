import React, {useState} from "react";

function ArtCard() {
  const[inStock,setInStock]=useState(true)
  //const{name, image, price}= art

  function handleInStock(){
    setInStock(!inStock)
  }

  return (
    <li className="card">
      <img alt={"art name"} />
      <h4>Name</h4>
      <p>Price: </p>
      {inStock ? (
        <button className="primary" onClick={handleInStock}>Available</button>
      ) : (
        <button onClick={handleInStock}>Sold</button>
      )}
    </li>
  );
}

export default ArtCard;