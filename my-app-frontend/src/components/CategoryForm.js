import React, { useState, useEffect } from 'react'



function CategoryForm({ addCategory }) {
    const [value, setValue] = useState("");


    const handleSubmit = e => {
      e.preventDefault();
      if (!value) return;
      addCategory(value);


     
        fetch(`http://localhost:9292/categories`, {
          method: "POST",
          headers: {
            // Accept: 'application.json',
            'Content-Type': 'application/json'
          },
          body: JSON.stringify({
            "name": value,
          })
        })
        .then(res => res.json())
        .then(data => console.log(data))
      
        setValue("");

    };
  
    return (
      <div>
      <form onSubmit={handleSubmit}>
        <input
          type="text"
          className="input"
          value={value}
          onChange={e => setValue(e.target.value)}
        />
        
      </form>
      
    </div>
    );
  }

 
export default CategoryForm
