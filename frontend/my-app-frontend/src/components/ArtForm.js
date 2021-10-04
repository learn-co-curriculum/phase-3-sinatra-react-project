import React, {useState} from "react";
 
function ArtForm() {
  const[formData,setFormData]=useState({
    title:"",
    image:"",
    date:"",
    artist:"",
    medium:"",
    dimensions:"",
    city:"",
    price: "",
    in_stock: true,
    seller_name: ""
  })
 
  function handleChange(e){
    setFormData({
      ...formData,
      [e.target.name]:e.target.value
    })}

 
  function handleSubmit(e){
    e.preventDefault();
    fetch("http://localhost:9292/pieces", {
      method: "POST",
      headers: {
        "Content-Type": "application/json",
      },
      body: JSON.stringify({formData}),
    })
    .then(r=>r.json())
  }
  
  return (
    <div className="new-art-form">
      <h2>New Art Piece</h2>
      <form onSubmit={handleSubmit}>
        <input 
          type="text" 
          name="name" 
          placeholder="Art Piece Name" 
          value={formData.name}
          onChange={handleChange}
        />
        <input 
          type="text" 
          name="image" 
          placeholder="Image URL" 
          value={formData.image}
          onChange={handleChange}
        />
        <input 
          type="datetime-local"
          name="date"
          placeholder="Today's Date" 
          value={formData.date}
          onChange={handleChange}
        />
        <input 
          type="text" 
          name="artist" 
          placeholder="Artist Name" 
          value={formData.artist}
          onChange={handleChange}
        />
        <input 
          type="text" 
          name="medium" 
          placeholder="Medium" 
          value={formData.medium}
          onChange={handleChange}
        />
 
        <input
          type="text" 
          name="dimensions" 
          placeholder="Dimensions" 
          value={formData.dimensions}
          onChange={handleChange}
        />
        <input
          type="text" 
          name="city" 
          placeholder="City of Origin" 
          value={formData.city}
          onChange={handleChange}
        />
        <input
          type="number" 
          name="price" 
          placeholder="Price" 
          value={formData.price}
          onChange={handleChange}
        />
        <input
          type="text" 
          name="username" 
          placeholder="Username" 
          value={formData.username}
          onChange={handleChange}
        />
        <button type="submit">Add Piece</button>
      </form>
    </div>
  );
}
 
export default ArtForm;