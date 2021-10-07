import React, {useState} from "react";

function ArtCard({artwork, update, setUpdate}) {
  const[inStock,setInStock]=useState(true)
  const{title, image, price}= artwork

  function handleInStock(){
    setInStock(!inStock)
  }

  function handleDeletion(){
    fetch(`http://localhost:9292/pieces/${artwork.id}`,{
      method: 'Delete'
    })
    .then(resp=> resp.json())
    .then(data=>{
      console.log(data)
      setUpdate(!update)
    })
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
      <button className="primary" onClick={handleDeletion}>Delete</button>
    </li>
  );
}

export default ArtCard;