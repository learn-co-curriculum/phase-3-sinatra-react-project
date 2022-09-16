import React, { useState } from 'react'
import CategoryDropDown from "./CategoryDropDown"


function Form({ addRemember }) {
    const [value, setValue] = useState("");
    const [categoryValue, setCategoryValue] = useState("");

  
    const handleSubmit = e => {
      e.preventDefault();
      if (!value) return;
      addRemember(value);
      console.log(categoryValue)

        fetch(`http://localhost:9292/remembers`, {
          method: "POST",
          headers: {
            'Content-Type': 'application/json'
          },
          body: JSON.stringify({
            "user_id": 1,
            "category_id": categoryValue,
            "remember": value 
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
      
      <CategoryDropDown setCategoryValue={setCategoryValue}/>
    </div>
    );
  }


export default Form
