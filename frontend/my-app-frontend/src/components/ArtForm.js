import React, {useState} from "react";

function ArtForm() {
  const[formData,setFormData]=useState({
    name:"",
    image:"",
    description:"",
    comment: ""
  })

  function handleChange(e){
    setFormData({
      ...formData,
      [e.target.name]:e.target.value
    })
  }

  function handleSubmit(e){
    e.preventDefault();
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
          type="text" 
          name="description" 
          placeholder="Artwork description" 
          value={formData.description}
          onChange={handleChange}
        />
        <button type="submit">Add Piece</button>
      </form>
    </div>
  );
}

export default ArtForm;
